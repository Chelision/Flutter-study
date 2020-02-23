
import 'package:flutter/material.dart';

class MyDialog extends Dialog{
  String title;
  String content;
  MyDialog(this.title,this.content);
  @override
  Widget build(BuildContext context){
    return Material(
      type: MaterialType.transparency,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250,
            height: 150,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("${this.title}"),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Icon(Icons.close),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("${this.content}"),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: FloatingActionButton(
                    child: Text("取消"),
                    onPressed: () {
                      print("object");
                      Navigator.pop(context);
                    },
                  )
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: FloatingActionButton(
                    child: Text("确定"),
                    onPressed: () {
                      print("object");
                      Navigator.pop(context);
                    },
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}