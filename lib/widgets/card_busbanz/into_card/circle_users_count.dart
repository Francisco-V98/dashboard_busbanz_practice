import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UsersCountCard extends StatelessWidget {
  const UsersCountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.secondary),
          child: const Center(
            child: TextStyleCard(
              text: '12',
              color: AppColors.primary,
              fontsize: 12,
            ),
          ),
        ),
      ],
    );
  }
}