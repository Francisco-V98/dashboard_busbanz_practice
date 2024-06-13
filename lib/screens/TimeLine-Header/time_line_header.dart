import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/TimeLine-Header_Container/time_line_header_container.dart';
import 'package:flutter/material.dart';

class TimeLineHeaderScreen extends StatelessWidget {
  const TimeLineHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgBotLight,
      body: Center(
        child: TimeLineHeader(),
      ),
    );
  }
}
