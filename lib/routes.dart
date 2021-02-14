
import 'package:flutter/material.dart';
import 'package:sawamall/ui/main_page.dart';
import 'package:sawamall/ui/search_page.dart';

class RouteGenerator {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String search = '/search';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/search':
      // Validation of correct data type

          return MaterialPageRoute(
            builder: (_) => SearchScreen(
            ),
          );

        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}