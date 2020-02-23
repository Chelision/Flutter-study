import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/routes.dart';
// import 'package:flutter_app/src/routePages/HomePage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import 'src/components/HomePage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //配置debug的logo是否显示
      // debugShowCheckedModeBanner: false,
      // home: HomePage(),
      initialRoute: '/',
      //监听此处的路由，来进行路由传值处理;
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('zn', 'CH'), // Hebrew
        // ... other locales the app supports
      ],
    );
  }
}

//主函数
void main() {
  //runApp是flutter提供的入口方法
  runApp(MyApp());
}
