import 'package:flutter/material.dart';

class RouterNav{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case '/auth':
        return Authentification();




    }

  }

}