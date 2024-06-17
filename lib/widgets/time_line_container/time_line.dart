import 'package:dashboard_busbanz_practice/widgets/widgets.dart';


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
    const double circleSize = 24;

    final hour = time.substring(0, time.length - 2);
    final period = time.substring(time.length - 2);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Column(
        children: [
          if (isFirst)
            TimeLineActive(
              lineWidth: 4,
              verticalLineHeight: 70,
              circleSize: circleSize,
              size: size,
              hour: hour,
              period: period,
            ),
          if (isLast)
            TImeLineOff(
              lineWidth: 4,
              verticalLineHeight: 70,
              circleSize: circleSize,
              size: size,
              hour: hour,
              period: period,
            ),
        ],
      ),
    );
  }
}
