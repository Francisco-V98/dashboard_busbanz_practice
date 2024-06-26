import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerSmallCircle extends StatelessWidget {
  const ContainerSmallCircle({
    super.key,
    required this.innerRadius,
  });

  final double innerRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: innerRadius * 1,
      height: innerRadius * 2,
      decoration: const BoxDecoration(
        color: AppColors.secondary,
        shape: BoxShape.circle,
      ),
    );
  }
}
