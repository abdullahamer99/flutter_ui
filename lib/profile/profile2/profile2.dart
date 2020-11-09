import 'package:flutter/material.dart';
import 'file:///C:/Users/Abdullah%20Amer/AndroidStudioProjects/flutter_ui/lib/profile/profile2/profile_2.dart';
import 'file:///C:/Users/Abdullah%20Amer/AndroidStudioProjects/flutter_ui/lib/profile/profile2/provider_2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}
class _Profile2State extends State<Profile2> {
  static Color _textColor = Color(0xFF4e4e4e);

Profile profile=Profile2Provider.getProfile();
@override

Widget build(BuildContext context) {
    return Theme(
      data:ThemeData(fontFamily:'SFDisplay'),
      child: Stack(
       children: [
         Image.asset(
           'assets/profiles/profile2bg.jpg',
         fit: BoxFit.cover,
           height: MediaQuery.of(context).size.height * 0.45,
           width: MediaQuery.of(context).size.width,
         ),
         Scaffold(
           backgroundColor: Colors.transparent,
           appBar: AppBar(
             backgroundColor: Colors.transparent,
             elevation: 0,
             leading: IconButton(
               onPressed: (){},
               icon: Icon(FontAwesomeIcons.bars,
                color: Colors.white,
               ),
             ),
           ),
           body: Stack(
             alignment: AlignmentDirectional.center,
             children: [
             Positioned(
             top: 15,
             left: 0,
             right: 0,
               child:Column(
                 children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child:Container(
                          height: 135,
                          width: 135,
                          decoration:
                          BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child:Container(
                          height: 120,
                          width: 120,
                          decoration:
                          BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                        ),

                      ),
                      Align(
                        alignment: Alignment.center,
                        child:
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: ExactAssetImage('assets/shared/ahmad.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 8) ,
                       child: Text(profile.user.name,
                           style: TextStyle(
                             color:Colors.white,
                           ))),
                      Text(profile.user.address,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
               ),
                 ),
               Padding(
                 padding: EdgeInsets.only(top: 275),
                 child: Container(

                   color: Colors.white,
                   child: Padding(
                     padding: EdgeInsets.only(top: 12,left: 12,right: 12),
                     child: Column(
                       children: [
                         Padding(
                           padding:  EdgeInsets.all(16),
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
                       padding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                       child: Row(
                         children: [
                           Text("ABOUT ME",style: TextStyle(
                             color: _textColor,
                             fontWeight: FontWeight.bold,
                             letterSpacing: 1.1,
                           ),),
                         ],
                       ),
                     ),
                         Padding(
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
                         ),
                          SizedBox(height: 8,),
                         Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                            child: Row(
                              children: [
                                Text('FRIENDS(25)',
                                  style: TextStyle(
                              color: _textColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.1,
                            ),)
                              ],
                            ),
                          ),
                         SizedBox(height: 16,),
                         _contacts(context),

                       ],
                           ),
                         ),

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
  fontSize: 18,
  fontWeight: FontWeight.bold,

);
  Widget _contacts(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 16),
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(25, (index) {
          return Container(
            width: 75,
            margin: EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/shared/abdullah.png'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          );
        }).toList(),
      ),
    );
  }
}
