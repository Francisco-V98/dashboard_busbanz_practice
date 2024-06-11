import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: const Text('Calendar'), centerTitle: true),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalendarContainer(month: 'Ago', date: '05', day: 'Lun'),
                  CalendarContainer(isActive: true, month: 'Ago', date: '05', day: 'Lun'),
                  CalendarContainer(isToday: true, month: 'Ago', date: '05', day: 'Lun'),
                  CalendarContainer(isToday: true, isActive: true, month: 'Ago', date: '05', day: 'Lun'),
                ],
              ),
            ),
            SizedBox(height: 16),
            CalendarContainerGroup(),
          ],
        ),
      ),
    );
  }
}
