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
    return Container(
      height: 320,
      // color: Colors.red,
      child: Card(
        margin:EdgeInsets.all(10),
        child:ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio:15/9,
              child: Image.asset("images/3.jpeg",fit:BoxFit.cover,),
            ),
            Container(
              height: 10,
            ),
            ListTile(
              //设置圆形头像
              /* leading: ClipOval(
                // padding:EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image.asset("images/3.jpeg",width:30,height:30,fit: BoxFit.cover)
              ), */
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/3.jpeg"),
              ),
              title: Text("xxxxxx",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black45
              ),
              ),
              subtitle: Text("xxxxx",style: TextStyle(
                fontSize: 14,
                color: Colors.black12
              ),),
            )
          ],
        )
      ),
    );
  }
}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
