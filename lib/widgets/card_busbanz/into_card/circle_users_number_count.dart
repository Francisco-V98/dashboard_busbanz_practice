import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class CircleUserNumberCount extends StatelessWidget {
  const CircleUserNumberCount({
    super.key,
    required this.numberUser,
  });

  final int numberUser;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: UsersCountCard(numberUser: numberUser),
        ),
        SizedBox(
          width: 28,
          height: 28,
          child: Text(
            '+',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                // color: AppColors.white,
                height: 0.5,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3
                  ..color = AppColors.primary),
          ),
        ),
        const SizedBox(
          width: 28,
          height: 28,
          child: Text(
            '+',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: AppColors.secondary,
              height: 0.5,
            ),
          ),
        ),
      ],
    );
  }
}

class UsersCountCard extends StatelessWidget {
  final int numberUser;
  const UsersCountCard({
    super.key,
    required this.numberUser,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.secondary,
          ),
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
