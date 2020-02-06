/* import 'package:flutter/material.dart'; //引入flutter库

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "flutter-text",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          body: MyApp2(),
        ),
        theme: ThemeData(
          primarySwatch:Colors.yellow
        ),
        
      );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
      "你好flutter",
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 50.0, color: Colors.yellow),
    ));
  }
}

class Textstyle {}

void main() {
  runApp(MyApp());
} */
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
          /* child: Text(
              "我是本文文档",
              textAlign: TextAlign.right,
              // textDirection:TextDirection.rtl
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.blue
              )
              // maxLines:1,
            ), */
            //实现圆角图片
         /*  child: Container(
            child: Image.network("https://dss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2855689277,4143886432&fm=58",
            // fit: BoxFit.fill,
            // width: 300.0,
            // height: 300.0,
            // fit: BoxFit.contain,
            alignment: Alignment.bottomRight,
            // repeat: ImageRepeat.repeatY,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                image: NetworkImage("https://dss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2855689277,4143886432&fm=58"),
                fit: BoxFit.fill
              )
            ),
          width: 300.0,
          height: 300.0,
          ), */
          /* width: 580.0,
          height: 315.0, */
          child: Container(
            child:Image.asset("images/3.jpeg")
          ),
         
        )
      ),
      title: "我是title",
      // color: Color.fromRGBO(12, 12, 22, 0.5),
      // theme: ThemeData.dark(),
    );
  }
}

void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
