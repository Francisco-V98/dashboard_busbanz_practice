import 'package:flutter/material.dart';

class ContainerImageCar extends StatelessWidget {
  const ContainerImageCar({
    super.key,
    required this.borderWidth,
    required this.avatarRadius,
  });

  final double borderWidth;
  final double avatarRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        border: Border.all(
          color: Colors.white,
          width: borderWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            30.0,
          ),
          bottomLeft: Radius.circular(
            30.0,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: const AssetImage(
            'assets/images/imagen_de_carro.png',
          ),
          radius: avatarRadius,
        ),
      ),
    );
  }
}
