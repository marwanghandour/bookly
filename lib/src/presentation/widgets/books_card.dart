import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/presentation/views/book_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:bookly/src/data/models/books_model.dart';

class BooksCard extends StatelessWidget {
  final BooksModel book;

  const BooksCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BookDetailPage()));
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
                  book.image,
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
