import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//配置controller的三个步骤
/* 
  1、继承State 和 SingleTickerProviderStateMixin
  2、定义_tabController
 */
class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  //组件销毁的时候触发的钩子函数
  void dispose() {
    super.dispose();
    //todo 下面写逻辑代码
  }
  @override
  //初始化的时候加载这个方法，生命周期钩子函数
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener((){
      //点击当前选中的索引
      print(_tabController.index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPage"), 
        bottom:TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text:"热销"),
            Tab(text:"推荐")
          ],
        ),
      ),
      
      body:TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Text("推荐"),
          Text("热销")
        ],
      )
    );
  }
}