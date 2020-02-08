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
            child:HomePage()
          ),
        )
      ),
      title: "我是title",
      // color: Color.fromRGBO(12, 12, 22, 0.5),
      // theme: ThemeData.dark(),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
         children: <Widget>[
           Text("我是${this.num}"),
           RaisedButton(
             child: Text("我是button"),
             onPressed: (){
               setState(() {//只有有状态组件里面才会有setState方法
                 this.num++;
               });
             },
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
