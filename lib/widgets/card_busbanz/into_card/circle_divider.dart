import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CircleDivider extends StatelessWidget {
  const CircleDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Container(
        width: 4,
        height: 4,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.black,
        ),
      ),
    );
  }
}
