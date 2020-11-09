import 'package:flutter_ui/chatlist/user.dart';

class Message{
  User sender,receiver;
  String dateTime;
  String body;

  Message({this.sender, this.receiver, this.dateTime, this.body});
}