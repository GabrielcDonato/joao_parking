import 'package:flutter/material.dart';
import 'package:joao_parking/modules/splash/splash.dart';
import 'package:joao_parking/modules/home/home.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {

      /// Splash:
      case '/splash_page':
        return MaterialPageRoute(builder: (context) => const SplashPage());

      /// Home:
      case '/home_page':
        return MaterialPageRoute(builder: (context) => const HomePage());

      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
