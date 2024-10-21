import 'package:bookly/src/core/utils/app_icons.dart';
import 'package:bookly/src/presentation/app_routes.dart';
import 'package:bookly/src/presentation/widgets/home_view_widgets.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_strings.dart';
import '../widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          logoUrl: AppStrings.appLogo,
          actions: <Widget>[
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.search);
              }, 
            icon: const Icon(AppIcons.search, size: 25,)),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: HomeViewWidgets(),
        ),
      ),
    );
  }
}