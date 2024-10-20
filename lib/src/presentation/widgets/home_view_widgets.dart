import 'package:bookly/src/presentation/widgets/dynamic_carousel.dart';
import 'package:flutter/material.dart';

class HomeViewWidgets extends StatelessWidget {
  const HomeViewWidgets({super.key});

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
  SliverToBoxAdapter _buildBestSellers(){
    return const SliverToBoxAdapter(
      child: Text(
                  'Best Sellers',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
    );
  }

  SliverList _buildBestSellersContent() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              const SizedBox(height: 20),
              Row(
                children: [
                  Image.asset(
                    'assets/images/test_image.png',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                  const SizedBox(width: 10), 
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Jungle Book',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text('Marwan Ghandour'),
                        Text(
                          '\$19.9',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20), // Adjust height if needed
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Add spacing between items
            ],
          );
        },
        childCount: 10, // Specify the number of items
      ),
    );
  }
}