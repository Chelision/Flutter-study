import 'package:flutter/material.dart';

/* class Page1 extends StatefulWidget {
  Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Page1"),
      ),
      body: Text("我是Body"),
    );
  }
} */
class Page1 extends StatelessWidget {
  final arguments;
  Page1({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Page1"),
      ),
      body: Container(
        child: Text("我是page1得body,${this.arguments['name']}"),
      ),
    );
  }
}