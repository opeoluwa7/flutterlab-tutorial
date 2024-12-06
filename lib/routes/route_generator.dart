import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/tips_and_updates.dart';
import 'package:myapp/screens/tutorial_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/tips':
        return MaterialPageRoute(builder: (_) => const TipsAndUpdates());
      case '/tutorials':
        return MaterialPageRoute(builder: (_) => TutorialScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error Page'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      ),
    );
  }
}
