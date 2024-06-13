import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/TimeLine-Header_Container/TimeLine-Header_Content/time_line_header_content.dart';
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
          topRight: Radius.circular(
            size.width * 0.05,
          ),
          bottomRight: Radius.circular(
            size.width * 0.05,
          ),
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
            TimeLineHeaderContent(
              spacing: spacing,
              borderWidth: borderWidth,
              avatarRadius: avatarRadius,
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
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
                    const Text(
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
                    const Text(
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
