import 'package:flutter/material.dart';
import 'package:orange_course/screen/Account/AccountScreen.dart';
import 'package:orange_course/screen/Login/LoginScreen.dart';
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
      theme: MyTheme.lightTheme,
      initialRoute: OnBoardingScreen.routeName,
      routes: {
        OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
        AccountScreen.routeName: (context) => AccountScreen(),
        LoginScreen.routeName:(context)=>LoginScreen(),
      },
    );
  }
}
