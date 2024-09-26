import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_demo/FirstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Navigation Demo",
      home: Firstscreen(),
    );
  }
}