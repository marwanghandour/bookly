import 'package:bookly/src/core/utils/app_icons.dart';
import 'package:bookly/src/core/utils/app_strings.dart';
import 'package:bookly/src/presentation/app_routes.dart';
import 'package:bookly/src/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/home_view_widgets.dart';

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
                onPressed: () {
                  Navigator.pushNamed<Object?>(context, AppRoutes.search);
                },
                icon: const Icon(
                  AppIcons.search,
                  size: 25,
                )),
          ],
        ),
        body: const HomeViewWidgets(),
      ),
    );
  }
}
