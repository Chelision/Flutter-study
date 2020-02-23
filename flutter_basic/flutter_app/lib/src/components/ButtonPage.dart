import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我是ButtonPage的appbar"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("普通按钮"),
              color: Colors.blue, //按钮的颜色
              textColor: Colors.white,
              highlightColor: Colors.red,
              splashColor: Colors.grey,
              elevation: 20,
              onPressed: () {
                print("object");
              },
            ),
            Container(
              height: 50,
              width: 200,
              child: RaisedButton(
                child: Text("普通按钮"),
                color: Colors.blue, //按钮的颜色
                textColor: Colors.white,
                highlightColor: Colors.red,
                splashColor: Colors.grey,
                elevation: 20,
                //设置按钮圆角
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  print("object");
                },
              ),
            ),
            //带图标的按钮,如果图标的onPressed传的是一个null表示将该按钮禁用掉
            RaisedButton.icon(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                icon: Icon(Icons.ac_unit),
                label: Text("带图标的按钮")),
            //按钮组
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        RaisedButton(
                      child: Text("按钮组中的按钮1"),
                      onPressed: () {
                        print("按钮组中的按钮1");
                      },
                    ),
                    FlatButton(
                      child: Text("按钮组中的按钮2"),
                      onPressed: () {
                        print("按钮组中的按钮2");
                      },
                    ),
                    OutlineButton(
                      child: Text("按钮组中的按钮3"),
                      onPressed: () {
                        print("按钮组中的按钮3");
                      },
                    ),
                    FloatingActionButton(
                      child: Text("返回"),
                      onPressed: () {
                        print("返回");
                      },
                    )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
