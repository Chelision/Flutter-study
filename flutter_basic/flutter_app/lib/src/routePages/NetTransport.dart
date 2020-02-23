import 'dart:convert';
import 'package:http/http.dart' as http;
import '../components/MyDialog.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NetTransport extends StatefulWidget {
  NetTransport({Key key}) : super(key: key);

  @override
  _NetTransportState createState() => _NetTransportState();
}

class _NetTransportState extends State<NetTransport> {
  //数据类型转换
  @override
  void initState() {
    /* Map mapData = {"name":"张三","age":20};
    var strData = '{"name":"张三","age":20}';
    super.initState();
    print(json.encode(mapData));
    print(json.decode(strData)["name"]); */
    super.initState();
  }

    void _getData() async {
    //获取服务器上的数据
    var url = "http://192.168.2.129:3000/";
    var response = await http.get(url);
    if(response.statusCode == 200){
      print(json.decode(response.body) is Map);
      // print(response is String);
    }
    else print("error");

    /* if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    } */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是网络传输页面的顶部导航"),
      ),
      body: Container(
        child: InkWell(
          child: Text("json.encode和json.decode方法"),
          onTap: () {
            // print(json.encode(this.mapData)); //Map转换成Json字符串
            // print(json.decode(this.strData)); //Json字符串转化成Map类型
            // this._getData();
            this._getData();
          },
        ),
      ),
    );
  }
}
