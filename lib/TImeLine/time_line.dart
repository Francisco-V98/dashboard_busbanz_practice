import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TimeLineEvent(time: '6:30AM', isFirst: true),
        TimeLineEvent(time: '5:30PM', isLast: true),
      ],
    );
  }
}

class TimeLineEvent extends StatelessWidget {
  final String time;
  final bool isFirst;
  final bool isLast;

  const TimeLineEvent({
    super.key,
    required this.time,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double circleSize = size.width * 0.06;
    final double lineWidth = size.width * 0.01;
    final double paddingHorizontal = size.width * 0.025;
    final double verticalLineHeight = size.height * 0.13;

    final hour = time.substring(0, time.length - 2);
    final period = time.substring(time.length - 2);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Column(
        children: [
          if (isFirst)
            Column(
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
            ),
          if (!isFirst && !isLast)
            Column(
              children: [
                Container(
                  width: lineWidth,
                  height: verticalLineHeight * 1.2,
                  color: Colors.grey,
                ),
                Container(
                  width: circleSize,
                  height: circleSize,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
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
            ),
          if (isLast)
            Column(
              children: [
                Container(
                  width: lineWidth,
                  height: verticalLineHeight,
                  color: AppColors.greyLight,
                ),
                Container(
                  width: circleSize,
                  height: circleSize,
                  decoration: BoxDecoration(
                    color: AppColors.greyLight,
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
                      color: Color.fromARGB(255, 128, 131, 133),
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
            ),
        ],
      ),
    );
  }
}
