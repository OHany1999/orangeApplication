import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orange_course/shared/colors/const_color.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    ),
    // colorScheme: const ColorScheme(
    //   brightness: Brightness.light,
    //   primary: orange,
    //   onPrimary: Colors.transparent,
    //   secondary: Colors.transparent,
    //   onSecondary: Colors.transparent,
    //   error: Colors.transparent,
    //   onError: Colors.transparent,
    //   background: Colors.transparent,
    //   onBackground: Colors.transparent,
    //   surface: Colors.transparent,
    //   onSurface: Colors.transparent,
    // ),
  );

  ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color.fromRGBO(255, 255, 266, 1.0),
      onPrimary: Colors.transparent,
      secondary: Colors.transparent,
      onSecondary: Colors.transparent,
      error: Colors.transparent,
      onError: Colors.transparent,
      background: Colors.transparent,
      onBackground: Colors.transparent,
      surface: Colors.transparent,
      onSurface: Colors.transparent,
    ),
  );
}
