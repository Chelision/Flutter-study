import 'package:flutter/material.dart';
import 'pages/RouterPage1.dart';
import 'pages/RouterPage2.dart';
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
               //路由页面跳转
               Navigator.of(context).push(
                 MaterialPageRoute(
                   builder: (context)=> Router1Page()
                 )
               );
             },
             child: Text("点击跳转到页面一"),
             color: Colors.blue,
           ),
           RaisedButton(
             onPressed: (){
              Navigator.of(context).push(
                 MaterialPageRoute(
                   //跳转传值
                   builder: (context)=> Router2Page("李四")
                 )
               );
             },
             child: Text("点击跳转到页面二"),
             color: Colors.blue,
           )
         ],
       ),
    );
  }
}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
