import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyleCard extends StatelessWidget {
  final Color color;
  final String text;
  final double fontsize;

  const TextStyleCard(
      {super.key,
      this.color = AppColors.black,
      required this.text,
      this.fontsize = 14});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Poppins',
        color: color,
        fontWeight: FontWeight.w600,
        height: 1.4,
        fontSize: fontsize,
      ),
    );
  }
}
