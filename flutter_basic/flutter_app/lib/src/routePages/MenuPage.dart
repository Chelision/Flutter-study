import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("我是MenuPage"),
          /* bottom: TabBar(
            tabs: <Widget>[
              Tab(text:"搜索一"),
              Tab(text: "搜索二",)
            ],
          ), */
        ),
        body: TabBarView(
          children: <Widget>[
            Text("展示一"),
            Text("展示二")
          ],
        )
      ),
    );
  }
}
