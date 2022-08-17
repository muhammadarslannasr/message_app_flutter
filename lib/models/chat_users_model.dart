import 'package:flutter/cupertino.dart';

class ChatUsersModel {
  String name;
  String messageText;
  String secondaryText;
  String imageURL;
  String time;
  ChatUsersModel({
    required this.name,
    required this.messageText,
    required this.secondaryText,
    required this.imageURL,
    required this.time,
  });
}
