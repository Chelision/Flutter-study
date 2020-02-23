import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        children: <Widget>[
          TextField(
            //最长输入值
            // maxLength: 10,
            //最大行
            maxLines: 2,
            decoration: InputDecoration(
                //类似placeholder的效果
                hintText: "我是输入框,请在此处出入内容",
                border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            //设置为密码框
            obscureText: true,
            maxLines: 1, //只有当最大行为1的时候才能设置为密码框
            decoration: InputDecoration(
                hintText: "在此处输入密码",
                labelText: "密码",
                border: OutlineInputBorder(),
                icon: Icon(Icons.work)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            //设置为密码框
            // obscureText:true,
            // maxLines: 1,//只有当最大行为1的时候才能设置为密码框
            decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: "请输入用户名",
                labelText: "用户名",
                border: OutlineInputBorder()),
          )
        ],
      ),
    );
  }
}

class FormComponents extends StatefulWidget {
  FormComponents({Key key}) : super(key: key);

  @override
  _FormComponentsState createState() => _FormComponentsState();
}

class _FormComponentsState extends State<FormComponents> {
  var userName = TextEditingController();
  @override
  void initState() {
    super.initState();
    this.userName.text = "初始化的时候的名字";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("表单头部导航"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          // child: TextDemo(),
          child: Container(
              child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                controller: this.userName,
                onChanged: (value) {
                  setState(() {
                    this.userName.text = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              RaisedButton(
                child: Text("获取文本框的值"),
                onPressed: (){
                  print(this.userName.text);
                },
              )
            ],
          )),
        ));
  }
}
