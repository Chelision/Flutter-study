import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/routePages/User/userPage.dart';

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
        backgroundColor: Colors.red,
        // leading: Icon(Icons.menu),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            print("aaa");
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("你点击了搜索图标");
            },
          )
        ],
        centerTitle: true,//设置标题是否居中显示
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
            ),
            RaisedButton(
              child: Text("点击跳转到AppBar"),
              onPressed: (){
                Navigator.pushNamed(context, '/AppBarComponent');
              },
            ),
            RaisedButton(
              child: Text("点击跳转到TabBarControllerPage"),
              onPressed: (){
                Navigator.pushNamed(context, '/TabBarControllerPage');
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  /* child: DrawerHeader(
                    child: Text("你好Flutter"),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/3.jpeg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ), */
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/3.jpeg"),
                        fit: BoxFit.cover
                      )
                    ),
                    accountName:Text("Chelision"),
                    accountEmail: Text("Chelision@163.com"),
                    // currentAccountPicture: Image.asset("images/3.jpeg",fit: BoxFit.cover,),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/3.jpeg")
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: () {
                Navigator.pushNamed(context, '/UserPage');
              },
            ),
            Divider(),//分割线组件
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(),//分割线组件
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("右侧抽屉"),
      ),
    );
  }
}