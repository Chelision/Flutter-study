import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/components/MyDialog.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../components/MyDialog.dart';

class DialogComponentsPage extends StatefulWidget {
  DialogComponentsPage({Key key}) : super(key: key);

  @override
  _DialogComponentsPageState createState() => _DialogComponentsPageState();
}

class _DialogComponentsPageState extends State<DialogComponentsPage> {
  //alertDialog
  void _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示信息"),
            content: Text("内容信息"),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  print("您取消了!");
                  Navigator.pop(context, "cancel");
                },
              ),
              FlatButton(
                child: Text("确定"),
                onPressed: () {
                  print("您确定了!");
                  Navigator.pop(context, "confrim");
                },
              )
            ],
          );
        });
    print(result);
  }

  //simpleDialog
  void _simpleDialog() async {
    var result = showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("SimpleDialog"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("Option A"),
                onPressed: () {
                  print("Option A");
                  Navigator.pop(context, "A");
                },
              ),
              SimpleDialogOption(
                child: Text("Option B"),
                onPressed: () {
                  print("Option B");
                  Navigator.pop(context, "B");
                },
              ),
              SimpleDialogOption(
                child: Text("Option c"),
                onPressed: () {
                  print("Option C");
                  Navigator.pop(context, "C");
                },
              )
            ],
          );
        });
    print(result);
  }

  //showModalBottomSheet
  _showModalBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (conteext) {
          return Container(
            height: 150,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("分享 A"),
                  onTap: () {
                    print("分享A");
                    Navigator.pop(context, "A");
                  },
                ),
                ListTile(
                  title: Text("分享 B"),
                  onTap: () {
                    print("分享B");
                    Navigator.pop(context, "B");
                  },
                )
              ],
            ),
          );
        });
    print(result);
  }

  //showToast
  void _showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  //定时器
  _showTimer(context) {
    /* var timer;
    timer = Timer.periodic(Duration(milliseconds: 1500), (t) {
      print("执行");
      Navigator.pop(context);
      t.cancel();
      print(t);//
    }); */
    Timer timer = Timer.periodic(
      Duration(milliseconds:5000), (t){
        Navigator.pop(context);
        t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DialogComponentsPage")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("AlertDialog"),
              color: Colors.blue,
              onPressed: () {
                this._alertDialog();
              },
            ),
            RaisedButton(
              child: Text("SimpleDialog"),
              color: Colors.blue,
              onPressed: () {
                this._simpleDialog();
              },
            ),
            RaisedButton(
              child: Text("showModalBottomSheet"),
              color: Colors.blue,
              onPressed: () {
                this._showModalBottomSheet();
              },
            ),
            RaisedButton(
              child: Text("showToast"),
              color: Colors.blue,
              onPressed: () {
                this._showToast();
              },
            ),
            RaisedButton(
              child: Text("自定义Dialog"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return MyDialog("我是头部111", "我是内容区222");
                    });
                this._showTimer(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
