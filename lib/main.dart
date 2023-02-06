import 'package:flutter/material.dart';
import 'package:orange_course/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.liteTheme,
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}

