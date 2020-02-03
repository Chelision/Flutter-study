import 'package:flutter/material.dart'; //引入flutter库

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "flutter-text",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          body: MyApp2(),
        ),
        theme: ThemeData(
          primarySwatch:Colors.yellow
        ),
        
      );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
      "你好flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 50.0, color: Colors.yellow),
    ));
  }
}

class Textstyle {}

void main() {
  runApp(MyApp());
}
