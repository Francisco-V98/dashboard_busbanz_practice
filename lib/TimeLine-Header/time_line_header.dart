import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TimeLineHeader extends StatelessWidget {
  const TimeLineHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(
              0.1,
            ),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: SizedBox(
        width: 348,
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 80.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.0, // Grosor del borde
                    ),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/imagen_de_andrea.png',
                      ),
                      radius: 25.0,
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 40.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30.0,
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.0,
                    ),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/imagen_de_conductor.png'),
                      radius: 25.0,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.0,
                    ),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/imagen_de_carro.png'),
                      radius: 25.0,
                    ),
                  ),
                ),
                // Third CircleAvatar
              ],
            ),
            // Text Information
            const Column(
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
                        fontSize: 18.0,
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
                        fontSize: 18.0,
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
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600
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
                        fontSize: 16.0,
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
