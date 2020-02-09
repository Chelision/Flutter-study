import 'package:flutter/material.dart';

class Router1Page extends StatefulWidget {
  Router1Page({Key key}) : super(key: key);

  @override
  _Router1PageState createState() => _Router1PageState();
}

class _Router1PageState extends State<Router1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我是顶部导航"),
        ),
        body: Container(
          child: Text("我是Router1"),
        ),
      );
  }
}