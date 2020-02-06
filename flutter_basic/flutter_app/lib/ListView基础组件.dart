import 'package:flutter/material.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar是顶部导航
        appBar:AppBar(
          title: Text("我是顶部导航")
        ),
        body:Container(
          child: Container(
            // child:Image.asset("images/3.jpeg")
            child:HomeConent()
          ),
        )
      ),
      title: "我是title",
      // color: Color.fromRGBO(12, 12, 22, 0.5),
      // theme: ThemeData.dark(),
    );
  }
}
class HomeConent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height:50,
      child: ListView(
      // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        /* ListTile(
          // leading:Icon(Icons.settings,color: Colors.yellow,size: 50,),
          leading: Image.asset("images/3.jpeg",width: 40,height: 40,),//在标题前面设置图标
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
          // trailing: Icon(Icons.settings,color:Colors.yellow),//图标会放到标题后面
        ),
        ListTile(
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          title: Text("一级标题"),
          subtitle: Text("二级标题"),
        ), */
        Container(
          width: 90,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.yellow
          ),
        ),
        Container(
          width: 90,
          decoration: BoxDecoration(
            color: Colors.blue
          ),
        ),
        Container(
          width: 90,
          decoration: BoxDecoration(
            color: Colors.red
          ),
        ),
      ],
      ),
    );
  }

}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
