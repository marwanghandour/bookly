import 'package:bookly/src/core/utils/app_strings.dart';
import 'package:bookly/src/core/utils/navigation_helper.dart';
import 'package:bookly/src/presentation/views/book_detail_view.dart';
import 'package:flutter/material.dart';

class YouMayAlsoLikeWidget extends StatelessWidget {
  const YouMayAlsoLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(25.0),
          child: Text(
            'You May Also Like',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 170,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    
                    Navigator.push(context, 
                    NavigationHelper.createSlideRoute(const BookDetailPage())
                    );
                  },
                  child: Image.asset(
                    AppStrings.testImage,
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
