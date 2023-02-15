import 'package:flutter/material.dart';
import 'package:orange_course/screen/onBoarding/onBoarding.dart';
import 'package:orange_course/shared/colors/my_theme.dart';

import 'screen/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: LoginScreen.routeName,
      routes: {
        OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
        LoginScreen.routeName: (context) => LoginScreen()
      },
    );
  }
}
