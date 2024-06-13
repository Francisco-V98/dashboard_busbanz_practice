import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class UsersCountCard extends StatelessWidget {
  final int numberUser;
  const UsersCountCard({
    super.key, required this.numberUser,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.secondary),
          child: Center(
            child: TextStyleCard(
              text: numberUser.toString(),
              color: AppColors.primary,
              fontsize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
