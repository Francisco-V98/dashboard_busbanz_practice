import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class TimeLineHeaderContent extends StatelessWidget {
  const TimeLineHeaderContent({
    super.key,
    required this.spacing,
    required this.borderWidth,
    required this.avatarRadius,
  });

  final double spacing;
  final double borderWidth;
  final double avatarRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContainerImageClient(
            spacing: spacing,
            borderWidth: borderWidth,
            avatarRadius: avatarRadius),
        ContainerImageDriver(
            spacing: spacing,
            borderWidth: borderWidth,
            avatarRadius: avatarRadius),
        ContainerImageCar(borderWidth: borderWidth, avatarRadius: avatarRadius),
      ],
    );
  }
}
