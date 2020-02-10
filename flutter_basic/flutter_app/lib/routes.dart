

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'src/routePages/MenuPage.dart';
import 'src/routePages/EditPage.dart';
import 'src/routePages/User/UserLoginPage.dart';
import 'src/routePages/User/UserRegisterPage.dart';
import 'src/routePages/HomePage.dart';

import 'src/routePages/Page1.dart';
import 'src/routePages/Page2.dart';
import 'src/routePages/Page3.dart';

final routes =  {
        '/': (context)=> HomePage(),
        '/MenuPage':(context)=>MenuPage(),
        '/EditPage':(context)=> EditPage(),
        '/page1':(context,{arguments})=> Page1(arguments:arguments),
        '/page2':(context,{arguments}) => Page2(arguments:arguments),
        '/page3':(context,{arguments}) => Page3(arguments:arguments),
        '/UserLogin':(context)=> UserLogin(),
        '/UserRegister':(context)=> UserResgiter(),
      };

Function onGenerateRoute = (RouteSettings settings){
        //统一处理
        final String name = settings.name;
        //具体的路由
        final Function pageContentBuilder = routes[name];
        if(pageContentBuilder != null) {
          if(settings.arguments != null){
            final Route route = MaterialPageRoute(
              builder: (context)=>
                pageContentBuilder(context,arguments:settings.arguments)
            );
            return route;
          }
          else{
            final Route route = MaterialPageRoute(
              builder: (context)=>
              pageContentBuilder(context)
            );
            return route;
          }
        }
      };
