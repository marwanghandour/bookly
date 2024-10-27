import 'package:bookly/src/core/utils/app_strings.dart';
import 'package:bookly/src/presentation/widgets/components/book_rating.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
               SizedBox(height: 150,child: Image.asset(AppStrings.testImage),),
     const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('The Jungle Book', 
                      style: 
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                        )
                        ),
                        SizedBox(height: 4,),
                      Text('J.k Rowling'),
                      Text('', style: TextStyle(fontSize: 15)),
                      SizedBox(height: 40),
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
      );
  }
}