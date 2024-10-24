import 'package:bookly/src/presentation/app_routes.dart';
import 'package:bookly/src/presentation/app_theme.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: AppRoutes.splash,
        onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
    );
  }
}
