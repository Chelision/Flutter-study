import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/routePages/EditPage.dart';
import 'package:flutter_app/src/routePages/HomePage.dart';

class UserRegisterThird extends StatefulWidget {
  UserRegisterThird({Key key}) : super(key: key);

  @override
  _UserRegisterThirdState createState() => _UserRegisterThirdState();
}

class _UserRegisterThirdState extends State<UserRegisterThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是 UserRegisterThird"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("确定"),
          onPressed: (){
            // Navigator.pop(context);
            Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(
                builder: (context)=> new HomePage(myIndex: 1,)
              ), 
              (route)=>route == null
              );
          },
        ),
      ),
    );
  }
}