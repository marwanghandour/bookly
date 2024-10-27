import 'package:bookly/src/presentation/widgets/components/best_sellers.dart';
import 'package:flutter/material.dart';
import '../components/dynamic_carousel.dart';

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
