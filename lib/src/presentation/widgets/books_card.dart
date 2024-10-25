import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/core/utils/navigation_helper.dart';
import 'package:bookly/src/presentation/views/book_detail_view.dart';
import 'package:flutter/material.dart';

class BooksCard extends StatelessWidget {
  const BooksCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, NavigationHelper.createSlideFromBottomRoute(const BookDetailPage()));
        },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/test_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
