import 'package:flutter/material.dart';

import 'pages/HomePage.dart';
import 'pages/MenuPage.dart';
import 'pages/TypePage.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }

  void setState(Null Function() param0) {}
}
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var Routes = [
    Home(),
    Menu(),
    Type()
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("我是顶部导航")
        ),
        body: Container(
          child: this.Routes[myIndex],
        ),
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
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
