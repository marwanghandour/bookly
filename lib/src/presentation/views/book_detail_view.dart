import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/core/utils/app_icons.dart';
import 'package:bookly/src/presentation/widgets/book_rating.dart';
import 'package:bookly/src/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class BookDetailPage extends StatelessWidget {

  const BookDetailPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBackground,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);}, 
          icon: const Icon(AppIcons.xsign, size: 25,),
          ),
          actions: [
            IconButton(
          onPressed: (){}, 
          icon: const Icon(AppIcons.cart, size: 25,),
          ),
          ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/test_image.png', height: 250,),
             const Text('The Jungle Book', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Text('J.K Rowling'),
              const SizedBox(height: 10,),
            const BookRating(mainaxisalignment: MainAxisAlignment.center,),
          const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomButton(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: const Radius.circular(20)),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                text: '19.99',
                color: Colors.white,
                textColor: Colors.black,
                 onPressed: (){}
                 ),
                  CustomButton(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            text: 'Free Preview',
            color: AppColors.buttonColor,
            textColor: Colors.black,
             onPressed: (){}
             ),
             ],
           ),

              ],
            ),
          )
        ],

      ),
    );
  }
}