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
    final double circleSize = size.width * 0.06;
    final double lineWidth = size.width * 0.01;
    final double paddingHorizontal = size.width * 0.025;
    final double verticalLineHeight = size.height * 0.10;

    final hour = time.substring(0, time.length - 2);
    final period = time.substring(time.length - 2);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Column(
        children: [
          if (isFirst)
            TimeLineActive(
              lineWidth: lineWidth,
              verticalLineHeight: verticalLineHeight,
              circleSize: circleSize,
              size: size,
              hour: hour,
              period: period,
            ),
          if (isLast)
            TImeLineOff(
              lineWidth: lineWidth,
              verticalLineHeight: verticalLineHeight,
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
