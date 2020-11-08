import 'package:flutter/material.dart';
import 'package:bookshelf/themes/colors.dart';

final ThemeData themeData = ThemeData(
  backgroundColor: Colors.white,
  textTheme: textTheme,
  primaryColor: basicBlue,
  scaffoldBackgroundColor: Colors.white,

);

final TextTheme textTheme = TextTheme(
  bodyText1: TextStyle(),
  bodyText2: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w600,
  ),
  headline4: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 40.0,

  ),
  headline5: TextStyle(
    fontSize: 30.0,
    color: Colors.black,
  ),

  headline6: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 25.0,
  ),
  subtitle1: TextStyle(
    fontSize: 18.0,
    color: Colors.black,
  ),
);