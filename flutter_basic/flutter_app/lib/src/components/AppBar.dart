import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarComponent extends StatefulWidget {
  AppBarComponent({Key key}) : super(key: key);

  @override
  _AppBarComponentState createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是AppBar"),
      ),
    );
  }
}