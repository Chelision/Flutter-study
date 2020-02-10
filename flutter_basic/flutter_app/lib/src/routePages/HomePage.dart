import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  int myIndex = 0;
  HomePage({Key key,this.myIndex=0}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState(this.myIndex);
}

class _HomePageState extends State<HomePage> {
  int myIndex;
  _HomePageState(this.myIndex);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是主页面导航"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("点击跳转到页面一"),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/page1',arguments: {"name":"我是传递过来得值"});
              },
            ),
            RaisedButton(
              child: Text("点击跳转页面二"),
              color: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, '/page2',arguments: {"id":"121212"});
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text("菜单"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_location),
            title: Text("总结")
          )
        ],
        onTap: (int index){
          setState(() {
            this.myIndex = index;
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/MenuPage');
                break;
              default:
                Navigator.pushNamed(context, '/EditPage');
            }
          });
        },
        fixedColor: Colors.red,
      ),
    );
  }
}