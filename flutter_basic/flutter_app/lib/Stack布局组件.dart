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
        height: 400,
        color: Colors.blue,
        //Stack结合Align使用
        /* child: Stack(
          children: <Widget>[
            Align(
              alignment:Alignment(0,0),
              child: Icon(Icons.save,color: Colors.red,size: 30),
            ),
            Align(
              alignment: Alignment(0,1),
              child: Icon(Icons.search,color: Colors.red,size: 30),
            )
          ],
        ), */
        //Stack结合Positioned使用
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10,
              child: Icon(Icons.save,color: Colors.red,size: 30),
            ),
            Positioned(
              right: 20,
              child: Icon(Icons.search,color: Colors.yellow,size: 30),
            )
          ],
        ),
      ),
    );
  }

}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
