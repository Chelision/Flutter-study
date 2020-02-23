import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key key}) : super(key: key);

  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Checkbox的顶部导航"),
      ),
      body: Column(
        children: <Widget>[
          Checkbox(
            value: this.checked,
            onChanged: (value){
              setState(() {
                this.checked = value;
              });
            },
            activeColor:Colors.red,
            checkColor: Colors.yellow,
            focusColor:Colors.pink,
          ),
          SizedBox(height: 10,),
          Text(this.checked?"选中":"未选中"),
          SizedBox(height: 10,),
          CheckboxListTile(
            value: this.checked,
            title: Text("这是一个一级标题"),
            subtitle: Text("这是一个二级标题"),
            onChanged: (value){
              setState(() {
                this.checked = value;
              });
            },
            checkColor: Colors.blue,
            secondary: Icon(Icons.home),
          )
        ],
      )
    );
  }
}