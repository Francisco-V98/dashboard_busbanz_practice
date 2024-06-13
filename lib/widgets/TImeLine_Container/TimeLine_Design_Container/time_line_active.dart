import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TimeLineActive extends StatelessWidget {
  const TimeLineActive({
    super.key,
    required this.lineWidth,
    required this.verticalLineHeight,
    required this.circleSize,
    required this.size,
    required this.hour,
    required this.period,
  });

  final double lineWidth;
  final double verticalLineHeight;
  final double circleSize;
  final Size size;
  final String hour;
  final String period;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: lineWidth,
          height: verticalLineHeight,
          color: AppColors.infoLight,
        ),
        Container(
          width: circleSize,
          height: circleSize,
          decoration: BoxDecoration(
            color: AppColors.infoLight,
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.bgBotLight,
              width: lineWidth,
            ),
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: size.width * 0.04,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: hour),
              TextSpan(
                text: period,
                style: TextStyle(
                  fontSize: size.width * 0.03,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
