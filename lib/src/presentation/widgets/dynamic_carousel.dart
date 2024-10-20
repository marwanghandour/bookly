import 'package:bookly/src/data/models/books_model.dart';
import 'package:bookly/src/presentation/widgets/books_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DynamicCarousel extends StatefulWidget {
  const DynamicCarousel({super.key});

  @override
  State<DynamicCarousel> createState() => _DynamicCarouselState();
}

final List<BooksModel> books = [
  BooksModel(
    title: 'Title',
    image: 'assets/images/test_image.png',
    author: 'Author',
    price: 19.99,
  ),
];

class _DynamicCarouselState extends State<DynamicCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: books.length,
      itemBuilder: (context, index, realIndex) {
        final book = books[index];
        return BooksCard(book: book);
      },
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 1.8,
        viewportFraction: 0.4,
      ),
    );
  }
}
