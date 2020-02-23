import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/routePages/User/userPage.dart';
import '../components/MyButton2.dart';
import '../components/MyButton.dart';

class HomePage extends StatefulWidget {
  int myIndex = 0;
  HomePage({Key key, this.myIndex = 0}) : super(key: key);
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
          onPressed: () {
            print("aaa");
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("你点击了搜索图标");
            },
          )
        ],
        centerTitle: true, //设置标题是否居中显示
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("点击跳转到页面一"),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/page1',
                    arguments: {"name": "我是传递过来得值"});
              },
            ),
            RaisedButton(
              child: Text("点击跳转页面二"),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/page2',
                    arguments: {"id": "121212"});
              },
            ),
            RaisedButton(
              child: Text("点击跳转到AppBar"),
              onPressed: () {
                Navigator.pushNamed(context, '/AppBarComponent');
              },
            ),
            RaisedButton(
              child: Text("点击跳转到TabBarControllerPage"),
              onPressed: () {
                Navigator.pushNamed(context, '/TabBarControllerPage');
              },
            ),
            RaisedButton(
              child: Text("点我跳转到按钮组件页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/ButtonPage');
              },
            ),
            MyButton2(
              height: 40,
              width: 160,
              color: Colors.red,
              fontColor: Colors.yellow,
              str: "自定义的按钮",
              onPress: () {
                print("我是自定义按钮2");
              },
            ),
            RaisedButton(
              child: Text("点击跳转到表单相关组件页面"),
              onPressed: () {
                Navigator.pushNamed(context, "/FormComponents");
              },
            ),
            RaisedButton(
              child: Text("点击跳转到Checkbox按钮页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/CheckboxComponent');
              },
            ),
            RaisedButton(
              child: Text("点击跳转到Radio页面"),
              onPressed: () {
                Navigator.pushNamed(context, "/RadioPage");
              },
            ),
            RaisedButton(
              child: Text("点击跳转到日期界面"),
              onPressed: () {
                Navigator.pushNamed(context, "/DatePicker");
              },
            ),
            RaisedButton(
              child: Text("点击跳转到Swiper页面"),
              onPressed: () {
                Navigator.pushNamed(context, "/SwiperPage");
              },
            ),
            RaisedButton(
              child: Text("点击跳转到Dialog页面"),
              onPressed: () {
                Navigator.pushNamed(context, "/DialogComponentsPage");
              },
            ),
            RaisedButton(
              child: Text("点击跳转到网络传输界面"),
              onPressed: () {
                Navigator.pushNamed(context, '/NetTransport');
              },
            )
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.myIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text("菜单"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_location), title: Text("总结"))
        ],
        onTap: (int index) {
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
                            fit: BoxFit.cover)),
                    accountName: Text("Chelision"),
                    accountEmail: Text("Chelision@163.com"),
                    // currentAccountPicture: Image.asset("images/3.jpeg",fit: BoxFit.cover,),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage("images/3.jpeg")),
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
            Divider(), //分割线组件
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(), //分割线组件
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
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              this.myIndex = 1;
              Navigator.pushNamed(context, '/MenuPage');
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 40,
          ),
          backgroundColor: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
