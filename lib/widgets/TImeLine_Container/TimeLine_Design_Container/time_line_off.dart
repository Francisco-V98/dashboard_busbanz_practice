import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class TImeLineOff extends StatelessWidget {
  const TImeLineOff({
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
              color: const Color.fromARGB(255, 128, 131, 133),
            ),
            children: [
              TextSpan(
                text: hour,
              ),
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
