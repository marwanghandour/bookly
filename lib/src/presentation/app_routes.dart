import 'package:bookly/src/presentation/views/introduction_screen.dart';
import 'package:bookly/src/presentation/views/search_page.dart';
import 'package:flutter/material.dart';
import 'views/home_screen.dart';
import 'views/splash_screen.dart';


class AppRoutes {
  static const String home = '/';
  static const String introduction= '/introduction';
  static const String splash= '/splash';
  static const String search= '/search';





  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      
        case introduction:
        return MaterialPageRoute(builder: (_) => const IntroductionScreens());
      case splash:
      return MaterialPageRoute(builder: (_) => const Splashscreen());

       case search:
      return MaterialPageRoute(builder: (_) => const SearchPage());


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      ),
    );
  }
}
