import 'package:flutter/material.dart';
import 'package:partytime/themes/colors.dart';
import 'package:partytime/themes/style.dart';

final InputDecoration formDecorationAuth = InputDecoration(
  contentPadding: new EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
  isDense: true,
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(width: 0.0),
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: themeData.primaryColor, width: 3.0)
  ),
  hintStyle: themeData.textTheme.headline5.copyWith(fontWeight: FontWeight.normal, color: Colors.grey),
);


final InputDecoration formDecorationPartyCreate = InputDecoration(
  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: Colors.black, width: 2.0,)
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: themeData.accentColor, width: 2.0)
  ),
);

final InputDecoration formDecorationNotification = InputDecoration(
  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  fillColor: Colors.transparent,
  isDense: true,
  filled: true,
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: themeData.accentColor, width: 2.0,)
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: Colors.white, width: 2.0)
  ),
);


final InputDecoration bottomSheetInputDecoration = InputDecoration(
  contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintStyle: themeData.textTheme.headline5.copyWith(fontWeight: FontWeight.normal, color: Colors.grey),
  fillColor: Colors.white,
  filled: true,
  isDense: true,
  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: themeData.primaryColor, width: 2.0,)
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: BorderSide(color: basicBlue, width: 2.0)
  ),
);

final InputDecoration basicInputDecoration = InputDecoration(
  contentPadding: new EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
  fillColor: Colors.transparent,
  filled: true,
  isDense: true,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  hintStyle: themeData.textTheme.bodyText2.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
);

final InputDecoration basicInputDecorationHeadline = InputDecoration(
  contentPadding: new EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
  fillColor: Colors.transparent,
  filled: true,
  isDense: true,
  enabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  hintStyle: themeData.textTheme.headline2.copyWith(color: Colors.grey),
);
