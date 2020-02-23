import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  //高度
  double height;
  //宽度
  double width;
  //背景颜色
  Color color;
  //文本信息
  String str;
  //事件回调方法
  var onPress;

  //字体的颜色
  Color fontColor;
  MyButton({Key key}) : super(key: key);
  
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  //高度
  double height;
  //宽度
  double width;
  //背景颜色
  Color color;
  //文本信息
  String str;
  //事件回调方法
  var onPress;

  //字体的颜色
  Color fontColor;
  _MyButtonState({this.height = 20,this.width=80,this.str = "默认按钮",this.onPress = null,this.color = Colors.blue,this.fontColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      color: this.color,
       child: RaisedButton(
         child: Text("${this.str}"),
         onPressed: this.onPress,
       ),
    );
  }
}