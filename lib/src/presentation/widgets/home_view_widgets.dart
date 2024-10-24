import 'package:bookly/src/core/utils/app_strings.dart';
import 'package:bookly/src/presentation/views/book_detail_view.dart';
import 'package:bookly/src/presentation/widgets/book_rating.dart';
import 'package:bookly/src/presentation/widgets/dynamic_carousel.dart';
import 'package:flutter/material.dart';

class HomeViewWidgets extends StatelessWidget {
  const HomeViewWidgets({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const SliverToBoxAdapter(child: DynamicCarousel()),
        _buildBestSellers(),
        _buildBestSellersContent(),
      ],
    );
  }

  SliverToBoxAdapter _buildBestSellers() {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Best Sellers',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  SliverList _buildBestSellersContent() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BookDetailPage(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset(
                  AppStrings.testImage,
                  fit: BoxFit.cover,
                  height: 150,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('The Jungle Book', style: TextStyle(fontSize: 20)),
                      Text('J.k Rowling'),
                      Text('', style: TextStyle(fontSize: 14)),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: BookRating(
                    mainaxisalignment: MainAxisAlignment.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
        },
        childCount: 10,
      ),
    );
  }
}
