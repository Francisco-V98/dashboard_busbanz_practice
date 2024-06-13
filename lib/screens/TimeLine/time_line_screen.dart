import 'package:dashboard_busbanz_practice/widgets/TImeLine_Container/time_line.dart';
import 'package:flutter/material.dart';

class TimeLineScreen extends StatelessWidget {
  const TimeLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TimeLine(),
      ),
    );
  }
}
