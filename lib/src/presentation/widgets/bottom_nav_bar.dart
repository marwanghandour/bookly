import 'package:bookly/src/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      shape: const CircularNotchedRectangle(),
      color: AppColors.primaryBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              AppIcons.home,
              size: 25,
              color: selectedIndex == 0 ? Colors.white : Colors.grey.shade500,
            ),
            onPressed: () => onItemTapped(0),
          ),
          IconButton(
            icon: Icon(
              AppIcons.search,
              size: 25,
              color: selectedIndex == 1 ? Colors.white : Colors.grey.shade500,
            ),
            onPressed: () => onItemTapped(1),
          ),

          IconButton(
            icon: Icon(
              AppIcons.category,
              size: 25,
              color: selectedIndex == 2 ? Colors.white : Colors.grey.shade500,
            ),
            onPressed: () => onItemTapped(2),
          ),
          IconButton(
            icon: Icon(
              AppIcons.profile,
              size: 25,
              color: selectedIndex == 3 ? Colors.white : Colors.grey.shade500,
            ),
            onPressed: () => onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
