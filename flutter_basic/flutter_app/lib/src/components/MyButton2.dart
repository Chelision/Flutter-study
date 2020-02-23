import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
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
  MyButton2(
      {this.height = 20,
      this.width = 80,
      this.str = "默认按钮",
      this.onPress = null,
      this.color = Colors.blue,
      this.fontColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        color: this.color,
        textColor:this.fontColor,
        child: Text("${this.str}"),
        onPressed: this.onPress,
      ),
    );
  }
}
