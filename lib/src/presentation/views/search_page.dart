import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        actions: const [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: SizedBox(
                height: 50,
                width: 350,
                child: SearchBar(
                  hintText: 'Search',
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                )),
            ),
          ),
        ],
      ),
    );
  }
}