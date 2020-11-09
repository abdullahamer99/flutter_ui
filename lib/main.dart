import 'package:flutter/material.dart';
//import 'package:flutter_ui/profile/profile1.dart';
import 'chatlist/chat.dart';
import 'file:///C:/Users/Abdullah%20Amer/AndroidStudioProjects/flutter_ui/lib/profile/profile2/profile2.dart';
import 'package:flutter_ui/profile3/profile3.dart';
import 'package:flutter_ui/profile4/profile.dart';
import 'package:flutter_ui/profile5/profile5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Chat1(),
    );
  }
}
