import 'package:bookshelf/themes/style.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookshelf',
      theme: themeData,
      initialRoute: '/auth',
      onGenerateRoute: RouterNav.generateRoute,
    );
  }
}