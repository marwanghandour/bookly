import 'package:bookly/src/core/utils/app_colors.dart';
import 'package:bookly/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? logoUrl; 
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    this.title,
    this.logoUrl,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          if (logoUrl != null) 
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset( 
                AppStrings.appLogo,
                height: 25, 
              ),
            ),
        
        ],
      ),
      actions: actions,
      backgroundColor: AppColors.primaryBackground,
      surfaceTintColor: AppColors.primaryBackground,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
