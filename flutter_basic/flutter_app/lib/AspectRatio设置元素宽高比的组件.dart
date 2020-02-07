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
 /*  IconData icon;
  double size = 32;
  Color color = Colors.red;
  HomeConent(this.icon,{this.color,this.size}); */
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        color: Colors.blue,
        child: AspectRatio(
          aspectRatio:3.0/1.0
        ),
      ),
    );
  }
}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
