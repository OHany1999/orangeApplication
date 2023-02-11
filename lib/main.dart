import 'package:flutter/material.dart';
import 'package:orange_course/screen/onBoarding/onBoarding.dart';
import 'package:orange_course/shared/colors/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.liteTheme,
      initialRoute: OnBoardingScreen.routeName,
      routes: {
        OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
      },
    );
  }
}
