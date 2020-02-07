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
    List data = [
      "yellow","blue","red","pink"
    ];
    List <Widget> myList = new List();
   /*  for(int i= 0; i< data.length; i++){
      myList.add(Container(
          width: 90,
          height: 50,
          child: Text("我是${data[i]}"),
        ),);
    } */
     myList = data.map((value){
      return Container(width: 90,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green
          ),
          child: Text("我是$value"));
    }).toList();
    return myList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height:50,
      /* child: ListView(
      // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
      scrollDirection: Axis.horizontal,
      children: this._getData()
      ), */
      child: ListView.builder(
        // scrollDirection: Axis.horizontal,
          itemCount: this.data.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text("我是${this.data[index]}")
            ); 
          },
      ),
    );
  }

}
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
