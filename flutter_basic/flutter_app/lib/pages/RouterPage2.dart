import 'package:flutter/material.dart';

/* class Router2Page extends StatelessWidget {
  String name = "张三";
  Router2Page(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是${this.name}"),
      ),
      body: Container(
        child: Text("我是Body"),
      ),
    );
  }
} */
class Router2Page extends StatefulWidget {
  Router2Page(String s, {Key key}) : super(key: key);

  @override
  _Router2PageState createState() => _Router2PageState();
}

class _Router2PageState extends State<Router2Page> {
  String myTitle = "张三";
  _Router2PageState({this.myTitle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //底部的浮动按钮
      floatingActionButton: FloatingActionButton(
        child: Text("返回",style: TextStyle(
          color: Colors.white,
          // fontSize: 32
        ),),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
        appBar: AppBar(
          title: Text("我是${this.myTitle}"),
        ),
        body: Container(
          child: Text("我是Router2"),
        ),
      );
  }
}