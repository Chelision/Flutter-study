/* 
import 'package:flutter/material.dart';
import 'src/routes.dart';
class MyApp extends StatelessWidget{
  var myRoutes= routes;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: routes,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//内容区
class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("我是顶部导航")
        ),
        body: BodyPage(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.myIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title:Text("首页") 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              title:Text("菜单") 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pages),
              title:Text("页码") 
            )
          ],
          onTap: (int index){
            setState(() {
              this.myIndex = index;
            });
          },
          fixedColor: Colors.yellow,
        ),
      );
  }
}
class BodyPage extends StatefulWidget {
  BodyPage({Key key}) : super(key: key);

  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         mainAxisAlignment:MainAxisAlignment.center,
         children: <Widget>[
           RaisedButton(
             onPressed: (){
               Navigator.pushNamed(context, '/page1');
             },
             child: Text("点击跳转到页面一"),
             color: Colors.blue,
           ),
           RaisedButton(
             onPressed: (){
              Navigator.pushNamed(context, '/page2');
             },
             child: Text("点击跳转到页面二"),
             color: Colors.blue,
           )
         ],
       ),
    );
  }
}
 */


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'src/routePages/HomePage.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      //监听此处的路由，来进行路由传值处理;
      onGenerateRoute: onGenerateRoute
    );
  }
}





//主函数
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}

