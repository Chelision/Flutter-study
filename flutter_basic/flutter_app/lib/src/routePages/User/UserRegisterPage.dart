import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserResgiter extends StatefulWidget {
  UserResgiter({Key key}) : super(key: key);

  @override
  _UserResgiterState createState() => _UserResgiterState();
}

class _UserResgiterState extends State<UserResgiter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是UserRegisterPage"),
      ),
    );
  }
}