import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ui/profile4/profile_4.dart';
import 'package:flutter_ui/profile4/provider_4.dart';
class Profile4 extends StatefulWidget {
  @override
  _Profile4State createState() => _Profile4State();
}
class _Profile4State extends State<Profile4> {
  Profile profile=ProfileProvider.getProvider();
  static Color _textColor = Color(0xFF4e4e4e);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: ExactAssetImage('assets/profiles/profile4bg.jpg'),
             fit: BoxFit.cover,
               ),
         ),
       ),
       Scaffold(
          backgroundColor: Colors.transparent,
           appBar: AppBar(
           backgroundColor: Colors.transparent,
             elevation: 0,
             leading: IconButton(
               icon:Icon(Icons.arrow_back_rounded),
               onPressed: (){},
               ),
               actions: [
                 IconButton(
            icon:Icon(Icons.more_vert),
            onPressed: (){},
            ),
            ],
               ),
         body: Align(
           alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30,horizontal: 16),
            height: MediaQuery.of(context).size.height*0.45,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(12) ,
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('assets/shared/abdullah.png'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),



                      ),
                    ),

                    Spacer(flex: 1,),
                    Padding(
                      padding:  EdgeInsets.all(4),
                      child: RaisedButton(

                        color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1,color: Colors.black),
                            borderRadius: BorderRadius.circular(25),
                          ),
                              child: Text('ADD FRIEND'),
                          onPressed: (){}
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text('FOLLOW',style: TextStyle(
                            color: Colors.white
                          ),),
                        color: _textColor,
                        onPressed: (){},
                    ),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 5),
                  child: Text(profile.user.name,
                  style: _bottomBarCounter,),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 5),
                  child: Text(profile.user.profession,
                  style: _bottomBarTitle,),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 5),
                  child: Text(profile.user.about),
                ),
                Container(
                  height: 1,
                  color: Colors.grey.shade200,
                ),
                Row(
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
                            fontSize: 22,
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
              ],
            ),
          ),
         ),
       ),
      ],
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
}