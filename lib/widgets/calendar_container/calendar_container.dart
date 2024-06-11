import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CalendarContainer extends StatelessWidget {
  final String month;
  final String date;
  final String day;
  final bool isActive;
  final bool isToday;
  const CalendarContainer({
    super.key,
    this.isActive = false,
    this.isToday = false, required this.month, required this.date, required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isToday ? 56 : 48,
      height: 56,
      decoration: BoxDecoration(
        color: isActive ? AppColors.secondary : AppColors.bgTopLight,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 2,
          color: isActive
              ? AppColors.black.withOpacity(0.3)
              : AppColors.white.withOpacity(0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            offset: const Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            month,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: isActive
                    ? AppColors.white.withOpacity(0.5)
                    : AppColors.black.withOpacity(0.5),
                height: 1.12),
          ),
          Text(
            date,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: isActive ? AppColors.white : AppColors.black,
                height: 1.18),
          ),
          Text(
            day,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: isActive ? AppColors.white : AppColors.black,
                height: 1.16),
          ),
        ],
      ),
    );
  }
}
