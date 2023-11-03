import 'package:flutter/material.dart';
import 'package:flutter_practice_routing_navigation/utils/routes_name.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RouteName.screenTwo,
              arguments: {
                'Node': 'Js Module',
                'Flutter': 'Good for Apps'
              });
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(
                child: Text('Goto Screen2'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
