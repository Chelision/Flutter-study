import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  UserLogin({Key key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是登录页面"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("点我进行登录"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        )
      ),
    );
  }
}