import 'package:flutter/material.dart';
import 'file:///C:/Users/Abdullah%20Amer/AndroidStudioProjects/flutter_ui/lib/profile/profile1/profil_1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'provider.dart';


class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  static Color _textColor = Color(0xFF4e4e4e);
Profile profile=Profile1Provider.getProfile();


      @override
      Widget build(BuildContext context) {
        return Theme(
          data: ThemeData(fontFamily: 'SFDisplay'),
          child: Stack(
            children: [
              Image.asset(
                'assets/profiles/landscape_1.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    'PROFILE', style: TextStyle(fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,),),
                  centerTitle: true,
                  leading: IconButton(
                    onPressed: (){},
                      icon: Icon(FontAwesomeIcons.bars
                      ,color: Colors.white,)
                  ),
                  actions: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(FontAwesomeIcons.cog,
                        color: Colors.white,),
                    )
                  ],

                ),
                body: Stack(
                  children: [
                    CustomPaint(
                     painter: ProfilePainter(),
                      child: Container(),

                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width* 0.07,
                      top: MediaQuery.of(context).size.height*0.24,
                      child:CircleAvatar(
                        minRadius: 40,
                        backgroundImage:ExactAssetImage('assets/shared/ahmad.png'),
                      ) ,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height*0.35,
                      bottom: 0,
                      right: 24,
                      left: 24,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: 8),
                            child: Text(profile.user.name,
                            style: TextStyle(
                              color: _textColor,
                              fontWeight:FontWeight.w900,
                              fontSize:32
                            ),),
                          ),
                          Row(
                         children: [
                           Icon(Icons.location_on,
                           color: Colors.grey.shade400,),
                           Text(profile.user.address),
                         ],
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: 20,bottom: 20),
                            child: Text('ABOUT ME',
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                profile.user.about,
                                softWrap: true,
                                style: TextStyle(
                                  color: _textColor,
                                  fontWeight:FontWeight.w600,
                                  fontSize: 14,
                                  height: 1.1,
                                  letterSpacing: 1.1,
                                ),
                              )
                          ),

                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 27,
                      left: 24,
                      right: 24,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('FOLLOWERS',
                              style:_bottomBarTitle,
                              ),
                              SizedBox(height: 8),
                              Text(profile.follower.toString(),
                               style:_bottomBarCounter,),
                             ],
                          ),
                          Column(
                            children: [
                              Text('FOLLOWING',
                              style: _bottomBarTitle,),
                              SizedBox(height: 8),
                              Text(profile.following.toString(),
                                style:_bottomBarCounter,),
                            ],
                          ),
                          Column(
                            children: [
                              Text('FRENDS',
                                style: _bottomBarTitle,),
                              SizedBox(height: 8),

                              Text(profile.friends.toString(),
                                style:_bottomBarCounter,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }


TextStyle _bottomBarTitle = TextStyle(
  color: Colors.grey.shade400,
);
TextStyle _bottomBarCounter = TextStyle(
  color: _textColor,
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
    }

class ProfilePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =Paint();
    Path path =Path();
    paint.color=Colors.white;
    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.37);
    path.lineTo(size.width,size.height);
    path.lineTo(0, size.height );
    path.lineTo(0, size.height * 0.25);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}



