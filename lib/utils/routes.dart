
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_routing_navigation/home_screen.dart';
import 'package:flutter_practice_routing_navigation/screen_one.dart';
import 'package:flutter_practice_routing_navigation/screen_two.dart';
import 'package:flutter_practice_routing_navigation/utils/routes_name.dart';

class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context)=> HomeScreen());
      case RouteName.screenOne:
        return MaterialPageRoute(builder: (context)=> ScreenOne());
      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context)=> ScreenTwo(data: settings.arguments as Map,));
      default :
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });

    }
  }
}