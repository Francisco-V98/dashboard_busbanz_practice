import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class CircleContent extends StatelessWidget {
  const CircleContent({
    super.key,
    required this.outerRadius,
    required this.innerRadius,
  });

  final double outerRadius;
  final double innerRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ContainerRadiusCircle(
          outerRadius: outerRadius,
        ),
        ContainerSmallCircle(
          innerRadius: innerRadius,
        ),
      ],
    );
  }
}
