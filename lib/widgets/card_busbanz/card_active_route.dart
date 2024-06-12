import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardActiveRoute extends StatelessWidget {
  const CardActiveRoute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.primary, borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: 128,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.black.withOpacity(0.2),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4)),
          ],
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AppColors.white.withOpacity(0.2),
              AppColors.white.withOpacity(0.0),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      TextStyleCard(text: 'Estudiante'),
                      CircleDivider(),
                      TextStyleCard(text: 'Colegio'),
                    ],
                  ),
                  TextStyleCard(
                    text: 'Ruta AB32-5',
                    color: AppColors.black.withOpacity(0.5),
                    fontsize: 11,
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      CircleAvatarCard(),
                      CircleAvatarCard(),
                      CircleAvatarCard(),
                      CircleAvatarCard(),
                      UsersCountCard(),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Row(
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: AnimationCircle(),
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
