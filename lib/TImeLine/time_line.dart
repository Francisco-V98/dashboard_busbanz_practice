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
    final hour = time.substring(
      0,
      time.length - 2,
    );
    final period = time.substring(
      time.length - 2,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Column(
        children: [
          if (isFirst)
            Column(
              children: [
                Container(
                  width: 4,
                  height: 93,
                  color: AppColors.infoLight,
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: AppColors.infoLight,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: hour),
                      TextSpan(
                        text: period,
                        style: const TextStyle(
                          fontSize: 12,
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
                  width: 4,
                  height: 95,
                  color: Colors.grey,
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(text: hour),
                      TextSpan(
                        text: period,
                        style: const TextStyle(
                          fontSize: 12,
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
                  width: 4,
                  height: 85,
                  color: AppColors.greyLight,
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: AppColors.greyLight,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: hour,
                      ),
                      TextSpan(
                        text: period,
                        style: const TextStyle(
                          fontSize: 12,
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
