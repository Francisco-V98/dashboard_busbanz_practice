import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CircleAvatarCard extends StatelessWidget {
  const CircleAvatarCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle, boxShadow: [
        BoxShadow(
          color: AppColors.primary,
          spreadRadius: 3,
        )
      ]),
      child: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/kid_sophia.png'),
        radius: 12,
      ),
    );
  }
}
