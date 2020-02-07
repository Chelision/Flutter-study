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
   List data = [
      "yellow","blue","red","pink"
    ];

  //返回Widget类型的私有方法
  List <Widget> _getData() {
    List <Widget> myList = new List();
    for(int i=0; i<20; i++) {
      myList.add(Container(
        alignment: Alignment.center,
        child: Text("我是$i"),
        color: Colors.green,
      ));
    }
    return myList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.fromLTRB(10, 15, 20, 20),//设置内边距
      crossAxisSpacing:2.0,//水平方向的间距
      mainAxisSpacing:2.0,//垂直方向的间距
      crossAxisCount: 2,//设置列数
      children: this._getData());
  }

}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
