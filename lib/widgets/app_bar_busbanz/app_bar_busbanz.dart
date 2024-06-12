import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarBusbanz extends StatelessWidget {
  final bool withBackground;
  final String title;
  final String image;
  const AppBarBusbanz({
    super.key,
    this.withBackground = true,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: withBackground ? Colors.transparent : AppColors.bgTopLight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 48,
              width: 48,
              child: Icon(
                Icons.menu_rounded,
                color: AppColors.black,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
            ),
            CircleWithImageAndBorder(image: image),
          ],
        ),
      ),
    );
  }
}


class CircleWithImageAndBorder extends StatelessWidget {
  final String image;

  const CircleWithImageAndBorder({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: AppColors.black,
          width: 2,
        ),
      ),
    );
  }
}