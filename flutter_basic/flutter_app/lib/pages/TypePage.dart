
import 'package:flutter/cupertino.dart';

class Type extends StatefulWidget {
  Type({Key key}) : super(key: key);

  @override
  _TypeState createState() => _TypeState();
}

class _TypeState extends State<Type> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("我是Type"),
    );
  }
}