import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是EditPage"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("我是EditPage的body部分"),
            RaisedButton(
              child: Text("跳转到登录页面"),
              onPressed: (){
                Navigator.pushNamed(context, '/UserLogin');
              },
            ),
            RaisedButton(
              child: Text("跳转到注册页面"),
              onPressed: (){
                Navigator.pushNamed(context, '/UserRegister');
              },
            )
          ],
        )
      ),
    );
  }
}