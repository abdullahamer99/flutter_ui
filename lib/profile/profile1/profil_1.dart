import 'package:flutter/material.dart';

class User{
  String name,address,about;

  User({this.name, this.address, this.about});
}
class Profile{
  User user;
  int follower,following,friends;

  Profile({this.user, this.follower, this.following, this.friends,});
}

