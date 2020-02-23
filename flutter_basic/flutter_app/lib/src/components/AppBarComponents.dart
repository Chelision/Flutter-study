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
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("我是AppBarComponents"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:"推荐",),
              Tab(text:"导航"),
              Tab(text:"搜索"),
              Tab(text:"导航"),
              Tab(text:"搜索"),
              Tab(text:"搜索"),
              Tab(text:"导航"),
              Tab(text:"搜索"),
            ],
            isScrollable:true,
            indicatorColor:Colors.black,
            // indicatorSize:TabBarIndicatorSize.label,//跟文字等宽
            indicatorSize:TabBarIndicatorSize.tab//跟tab等宽
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("页面1"),
            Text("页面2"),
            Text("页面3"),
            Text("页面2"),
            Text("页面3"),
            Text("页面3"),
            Text("页面2"),
            Text("页面3"),
          ],
        )
      ),
    );
  }
}




