import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/routes.dart';

// import 'src/components/HomePage.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //配置debug的logo是否显示
      // debugShowCheckedModeBanner: false,
      initialRoute: '/AppBarComponent',//表示初始化的时候加载的路由
      //监听此处的路由，来进行路由传值处理;
      onGenerateRoute: onGenerateRoute
      // home: AppBarComponent(),
    );
  }
}





//主函数
void main(){
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}

