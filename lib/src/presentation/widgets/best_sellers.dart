import 'package:bookly/src/core/utils/navigation_helper.dart';
import 'package:bookly/src/presentation/views/book_detail_view.dart';
import 'package:bookly/src/presentation/widgets/book_list_view.dart';
import 'package:flutter/material.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
       NavigationHelper.createSlideFromBottomRoute(const BookDetailPage()),
        );
      },
      child: Column(
        children: [
          const BookListView(),
                    const BookListView(),

          const BookListView(),
          const BookListView(),
          const BookListView(),
          const BookListView(),

        ],
      ),
     );
  }
}