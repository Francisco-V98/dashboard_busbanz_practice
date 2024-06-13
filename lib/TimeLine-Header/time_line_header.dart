import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TimeLineHeader extends StatelessWidget {
  const TimeLineHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double avatarRadius = size.width * 0.06;
    final double borderWidth = size.width * 0.015;
    final double spacing = size.width * 0.08;

    return Container(
      padding: EdgeInsets.all(size.width * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(size.width * 0.05),
          bottomRight: Radius.circular(size.width * 0.05),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, size.height * 0.005),
          ),
        ],
      ),
      child: SizedBox(
        width: size.width * 0.85,
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: spacing * 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.white,
                      width: borderWidth,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/imagen_de_andrea.png'),
                      radius: avatarRadius,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: spacing),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.white,
                      width: borderWidth,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/imagen_de_conductor.png'),
                      radius: avatarRadius,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.white,
                      width: borderWidth,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/imagen_de_carro.png'),
                      radius: avatarRadius,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: size.width * 0.05),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Freddy',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.045,
                      ),
                    ),
                    Text(
                      ' • ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Andrea',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.045,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Mazda CX30',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: AppColors.greyLight,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      ' • ',
                      style: TextStyle(
                        color: AppColors.greyLight,
                      ),
                    ),
                    Text(
                      'JWP192',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.greyLight,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
