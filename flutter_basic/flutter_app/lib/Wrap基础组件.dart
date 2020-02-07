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
  List myList = [1,2,3,4,5,6,7,8,9,11110];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 300,
      color: Colors.red,
      // color: Colors.red,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.spaceAround,//定义排列的方式，与flex类似
        children: myList.map((value){
          return Container(
            // width: 50,
            height: 50,
            color: Colors.blue,
            child: Text("我是$value"),
          );
        }).toList()
      ),
    );
  }
}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
