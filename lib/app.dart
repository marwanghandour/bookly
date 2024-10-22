import 'package:flutter/material.dart';
import 'src/presentation/app_routes.dart';
import 'src/presentation/app_theme.dart';

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
