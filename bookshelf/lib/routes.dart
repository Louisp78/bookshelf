import 'package:bookshelf/screens/auth/auth.dart';
import 'package:bookshelf/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home/home.dart';

class RouterNav{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case '/auth':
        return MaterialPageRoute(builder: (_) => Authentification());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/home/details':
        return MaterialPageRoute(builder: (_) => DetailsScreen(book: settings.arguments,));
      default :
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));




    }

  }

}