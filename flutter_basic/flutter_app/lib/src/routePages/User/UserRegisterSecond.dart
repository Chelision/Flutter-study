
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserRegisterSecond extends StatefulWidget {
  UserRegisterSecond({Key key}) : super(key: key);

  @override
  _UserRegisterSecondState createState() => _UserRegisterSecondState();
}

class _UserRegisterSecondState extends State<UserRegisterSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是UserRegisterSecond"),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("点击跳转到PageThird"),
            onPressed: (){
              // Navigator.of(context).pushReplacementNamed('/UserRegisterThird');
              Navigator.of(context).pushReplacementNamed('/UserRegisterThird');
            },
          ),
        ),
      ),
    );
  }
}