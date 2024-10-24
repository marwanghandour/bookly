import 'package:bookly/src/presentation/widgets/books_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DynamicCarousel extends StatefulWidget {
  const DynamicCarousel({super.key});

  @override
  State<DynamicCarousel> createState() => _DynamicCarouselState();
}

class _DynamicCarouselState extends State<DynamicCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 10,
      itemBuilder: (context, index, realIndex) {
        return const BooksCard();
      },
      options: CarouselOptions(
        disableCenter: true,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 1.8,
        viewportFraction: 0.4,
      ),
    );
  }
}
