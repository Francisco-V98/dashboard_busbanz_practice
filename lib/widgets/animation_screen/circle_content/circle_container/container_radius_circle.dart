import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class ContainerRadiusCircle extends StatelessWidget {
  const ContainerRadiusCircle({
    super.key,
    required this.outerRadius,
  });

  final double outerRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: outerRadius * 2,
      height: outerRadius * 2,
      decoration: BoxDecoration(
        color: AppColors.secondary.withOpacity(
          0.2,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}