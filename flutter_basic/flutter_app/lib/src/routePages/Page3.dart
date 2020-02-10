import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  var arguments;
  Page3({Key key,this.arguments}) : super(key: key);

  @override
  _Page3State createState() => _Page3State(arguments:this.arguments);
}

class _Page3State extends State<Page3> {
  var arguments;
  _Page3State({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Page3"),
      ),
      body: Container(
        child: Text("我是Page3的body部分${this.arguments["id"]}"),
      ),
    );
  }
}