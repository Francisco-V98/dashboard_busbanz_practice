import 'package:dashboard_busbanz_practice/widgets/Animation-Circle/Circle-Content/Circle-container/container_radius_circle.dart';
import 'package:dashboard_busbanz_practice/widgets/Animation-Circle/Circle-Content/Circle-container/container_small_circle.dart';
import 'package:flutter/material.dart';

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
