import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int sex = 1;
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是RadioBox的头部导航"),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Radio(
                value: 1,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex,
              ),
              Text("男"),
              Radio(
                value: 2,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
                groupValue: this.sex,
              ),
              Text("女"),
            ],
          ),
          Row(
            children: <Widget>[Text(this.sex == 1 ? "男" : "女")],
          ),
          Divider(
            height: 2,
            color: Colors.black,
          ),
          RadioListTile(
              value: 1,
              groupValue: this.sex,
              title: Text("我是一级标题"),
              subtitle: Text("我是二级标题"),
              secondary: Icon(Icons.settings),
              onChanged: (value) {
                setState(() {
                  this.sex = value;
                });
              }),
          RadioListTile(
              value: 2,
              groupValue: this.sex,
              title: Text("我是一级标题"),
              subtitle: Text("我是二级标题"),
              secondary: Image.asset("images/3.jpeg"),
              isThreeLine: true,
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  this.sex = value;
                });
              }),
          SizedBox(height: 10,),
          // Switch(value: this.opened, onChanged: (value){
          //   setState(() {
          //     this.opened = value;
          //   });
          // }),
          Switch(value: this.opened, onChanged: (value){
            setState(() {
              this.opened = value;
            });
          })
        ],
      )),
    );
  }
}
