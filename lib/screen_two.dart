import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {

  dynamic data;
  ScreenTwo({super.key, required this.data});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(widget.data['Flutter'].toString()),
      ),
    );
  }
}
