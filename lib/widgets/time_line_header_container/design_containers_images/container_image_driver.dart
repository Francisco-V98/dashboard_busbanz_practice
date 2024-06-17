import 'package:flutter/material.dart';

class ContainerImageDriver extends StatelessWidget {
  const ContainerImageDriver({
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
    return Container(
      margin: EdgeInsets.only(left: spacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: Colors.white,
          width: borderWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(
            30.0,
          ),
          bottomRight: Radius.circular(
            30.0,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: const AssetImage(
            'assets/images/imagen_de_conductor.png',
          ),
          radius: avatarRadius,
        ),
      ),
    );
  }
}
