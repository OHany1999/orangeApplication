import 'package:flutter/material.dart';

class MyTheme{

 static ThemeData liteTheme = ThemeData(
   colorScheme: ColorScheme(
       brightness: Brightness.light,
       primary: Color.fromRGBO(255, 102, 0, 1.0),
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

 static ThemeData darkTheme = ThemeData(
   colorScheme: ColorScheme(
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