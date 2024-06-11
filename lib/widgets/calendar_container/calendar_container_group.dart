import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CalendarContainerGroup extends StatelessWidget {
  const CalendarContainerGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8, left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CalendarContainer(
            isActive: true,
            isToday: true,
            month: 'Ago',
            date: '05',
            day: 'Hoy',
          ),
          Container(
            height: 56,
            width: 1,
            color: AppColors.black.withOpacity(0.3),
          ),
          const CalendarContainer(
            month: 'Ago',
            date: '06',
            day: 'Mar',
          ),
          const CalendarContainer(
            month: 'Ago',
            date: '07',
            day: 'Mie',
          ),
          const CalendarContainer(
            month: 'Ago',
            date: '08',
            day: 'Jue',
          ),
          const CalendarContainer(
            month: 'Ago',
            date: '09',
            day: 'Vie',
          ),
          const CalendarContainer(
            month: 'Ago',
            date: '12',
            day: 'Lun',
          ),
        ],
      ),
    );
  }
}
