import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'src/routePages/MenuPage.dart';
import 'src/routePages/EditPage.dart';
import 'src/routePages/User/UserLoginPage.dart';
import 'src/routePages/User/UserRegisterPage.dart';
import 'src/routePages/HomePage.dart';
import 'src/routePages/User/UserRegisterSecond.dart';
import 'src/routePages/User/UserRegisterThird.dart';

import 'src/routePages/Page1.dart';
import 'src/routePages/Page2.dart';
import 'src/routePages/Page3.dart';
import 'src/components/AppBarComponents.dart';
import 'src/components/TabBarControllerPage.dart';
import 'src/routePages/User/UserPage.dart';
import 'src/components//ButtonPage.dart';
import 'src/routePages/FormComponents.dart';
import 'src/routePages/CheckBoxPage.dart';
import 'src/routePages/RadioPage.dart';
import 'src/routePages/DatePicker.dart';
import 'src/routePages/SwiperPage.dart';
import 'src/routePages/DialogComponentPage.dart';
import 'src/routePages/NetTransport.dart';

final routes =  {
        '/': (context)=> HomePage(),
        '/MenuPage':(context)=>MenuPage(),
        '/EditPage':(context)=> EditPage(),
        '/page1':(context,{arguments})=> Page1(arguments:arguments),
        '/page2':(context,{arguments}) => Page2(arguments:arguments),
        '/page3':(context,{arguments}) => Page3(arguments:arguments),
        '/UserLogin':(context)=> UserLogin(),
        '/UserRegister':(context)=> UserResgiter(),
        '/UserRegisterSecond':(context)=>UserRegisterSecond(),
        '/UserRegisterThird':(context)=>UserRegisterThird(),
        '/AppBarComponent': (context)=>AppBarComponents(),
        '/TabBarControllerPage': (context)=>TabBarControllerPage(),
        '/UserPage': (context) => UserPage(),
        '/ButtonPage' :(context) => ButtonPage(),
        '/FormComponents': (context)=> FormComponents(),
        '/CheckboxComponent': (context)=> CheckboxPage(),
        '/RadioPage':(context)=> RadioPage(),
        '/DatePicker': (context)=> DatePickerDemo(),
        '/SwiperPage': (context)=> SwiperPage(),
        '/DialogComponentsPage': (context)=>DialogComponentsPage(),
        '/NetTransport' : (context)=>NetTransport()
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
