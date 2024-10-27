import 'package:bookly/src/core/utils/app_icons.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainaxisalignment;

  const BookRating({
    super.key,
    required this.mainaxisalignment,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainaxisalignment,
      children: const [
        Icon(
          AppIcons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Text(
          '4.9',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '(2900)',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
