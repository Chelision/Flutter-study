import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  var arguments;
  var argument;
  Page2({this.arguments});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Page2"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("我是Page2得body部分,${this.argument = this.arguments != null ? this.arguments['id']:'23333'}"),
            ToPage3()
          ],
        ),
      ),
    );
  }
}

class ToPage3 extends StatefulWidget {
  ToPage3({Key key}) : super(key: key);

  @override
  _ToPage3State createState() => _ToPage3State();
}

class _ToPage3State extends State<ToPage3> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("点击跳转到Page3"),
      onPressed: (){
        Navigator.pushNamed(context, '/page3',arguments: {"id":"55555"});
      },
    );
  }
}

