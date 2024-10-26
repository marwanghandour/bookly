import 'package:bookly/src/core/utils/app_strings.dart';
import 'package:bookly/src/core/utils/navigation_helper.dart';
import 'package:bookly/src/presentation/views/book_detail_view.dart';
import 'package:bookly/src/presentation/widgets/best_sellers.dart';
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
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildBestSellersContent() {
    return const SliverToBoxAdapter(
          child: BestSellers(),
      );
      
  }}
