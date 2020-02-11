import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarComponents extends StatefulWidget {
  AppBarComponents({Key key}) : super(key: key);

  @override
  _AppBarComponentsState createState() => _AppBarComponentsState();
}

class _AppBarComponentsState extends State<AppBarComponents> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("我是AppBarComponents"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:"推荐"),
              Tab(text:"导航"),
              Tab(text:"搜索"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("页面1"),
            Text("页面2"),
            Text("页面3"),
          ],
        )
      ),
    );
  }
}
