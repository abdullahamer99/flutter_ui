import 'package:flutter/material.dart';
import 'package:flutter_ui/profile3/profile_3.dart';
import 'package:flutter_ui/profile3/provider.dart';

class Profile3 extends StatefulWidget {
  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  Profile profile=ProfileProvider.getProfile();
  static Color _textColor = Color(0xFF4e4e4e);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset( 'assets/profiles/profile3bg.jpg',
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
              leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back,
              ),),
              actions: <Widget>[
                IconButton(
               onPressed: () {},
              icon: Icon(
             Icons.more_vert,
           ),
          ),
           ],
          ),

          body: Stack(
            children: [
              _bodyContainer(context),
              _imagecontainer(context),
            ],
          ),
        ),
      ],
    );
  }
  Widget _bodyContainer(BuildContext context){
    return Positioned(
      left: 16,
      right: 16,
      height: MediaQuery.of(context).size.height*0.80,
      bottom: 0,
      child: Container(
        child:_user(context),
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.only(
             topRight: Radius.circular(10),
             topLeft: Radius.circular(10),
           ),
         ),
      ),

    ) ;
  }
  Widget _imagecontainer(BuildContext context) {
    return Positioned(
      right: MediaQuery.of(context).size.width*0.53-50,
      top: MediaQuery.of(context).size.height*0.11-50,
      height: MediaQuery.of(context).size.height* 0.09,
      width: MediaQuery.of(context).size.width /5,
      child: Container(
        width: 100,
        height: 100,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage('assets/shared/ahmad.png'),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
        ),
        ),
    );
 }
  Widget _user(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 45,left: 94),
          child: Text(profile.user.name,
              style: TextStyle(
                color: _textColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,

              ),
               ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 10,left: 115),
          child: Text(profile.user.address,
              style:TextStyle(
                color:  Colors.grey.shade400,
                fontSize: 16,
                fontWeight: FontWeight.bold,

              )),
        ),
        _followr(context),
        Container(
          height: 1,
          color: Colors.grey.shade200,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('FOLLOWERS',
                    style:_bottomBarTitle,
                  ),
                  SizedBox(height: 8),
                  Text(profile.followers.toString(),
                    style: TextStyle(
                      color: _textColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                      fontSize: 18,

                    ),),
                ],
              ),
              Column(
                children: [
                  Text('FOLLOWING',
                    style: _bottomBarTitle,),
                  SizedBox(height: 8),
                  Text(profile.following.toString(),
                    style: TextStyle(
                      color: _textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,

                    ),),
                ],
              ),
              Column(
                children: [
                  Text('FRIENDS',
                    style: _bottomBarTitle,),
                  SizedBox(height: 8),
                  Text(profile.friends.toString(),
                    style: TextStyle(
                      color: _textColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                      fontSize: 18,
                    ),),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Colors.grey.shade200,
        ),
        Padding(
          padding:  EdgeInsets.all(17),
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('PHOTOS',style: TextStyle(
                  color: _textColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  fontSize: 16,

                ),),
                Text('(25)',style: TextStyle(
                  color: _textColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.1,
                  fontSize: 18,

                ),),
              ],
            ),
          ),
        ),
        _listImage(context),
        _about(context),
        _aboutME(context),
      ],
    );
 }
  Widget _followr(BuildContext context){
    return Padding(
      padding:  EdgeInsets.all(40),
      child: Align(

          child: FlatButton(onPressed: (){},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.deepOrange.shade700,
              padding: EdgeInsets.only(right:32,left:32,top: 8,bottom: 8),
              child: Padding(
                padding:  EdgeInsets.all(6),
                child: Text("FOLLOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17
                  ),
            ),
              ),
        ),
      ),
    );
 }
  TextStyle _bottomBarTitle = TextStyle(
    color: Colors.grey.shade400,
  );
  TextStyle _bottomBarCounter = TextStyle(
    color: _textColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,

  );
  Widget _listImage(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 22),
      child: Container(
        width: double.infinity,
        height: 125,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(25, (index) {
            return Container(
              width: 125,
              height: 125,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/shared/as.png'),
                  fit: BoxFit.cover,

                ),
                borderRadius:BorderRadius.all(Radius.circular(10)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
  Widget _about(BuildContext context) {
   return Padding(
     padding:  EdgeInsets.all(20),
     child: Row(
         children: [
           Text("ABOUT ME",style: TextStyle(
             color: _textColor,
             fontSize: 15,
             fontWeight: FontWeight.bold,
             letterSpacing: 1.1,
           ),),
         ],
     ),
   );
 }
  Widget _aboutME(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        profile.user.about,
        softWrap: true,
        style: TextStyle(
          color: _textColor,
          fontWeight:FontWeight.w600,
          fontSize: 14,
          height: 1.1,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
