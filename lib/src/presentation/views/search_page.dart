import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/presentation/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        title: const Text(
          'Search Books',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const SearchWidget(
        hintText: 'Search',
      ),
    );
  }
}
