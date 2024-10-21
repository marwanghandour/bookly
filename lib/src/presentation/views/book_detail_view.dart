import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/core/utils/app_icons.dart';
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
              ],
            ),
          )
        ],

      ),
    );
  }
}