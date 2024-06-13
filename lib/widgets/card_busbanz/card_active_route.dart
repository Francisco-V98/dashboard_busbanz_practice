import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class CardActiveRoute extends StatelessWidget {
  final String textLeft;
  final String textRight;
  final String textbuttom;
  final int numberUser;
  const CardActiveRoute({
    super.key,
    required this.textLeft,
    required this.textRight,
    required this.textbuttom,
    required this.numberUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: 128,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TextStyleCard(text: textLeft),
                          const CircleDivider(),
                          TextStyleCard(text: textRight),
                        ],
                      ),
                      TextStyleCard(
                        text: textbuttom,
                        color: AppColors.black.withOpacity(0.5),
                        fontsize: 11,
                      ),
                      const Spacer(),
                      UserImageGroup(numberUser: numberUser),
                    ],
                  ),
                ),
                const Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: AnimationCircle(),
                      ),
                      Icon(Icons.keyboard_arrow_right_outlined)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const _InsideShadow(),
        ],
      ),
    );
  }
}

class _InsideShadow extends StatelessWidget {
  const _InsideShadow();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.black.withOpacity(0.2),
          width: 1.5,
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.white.withOpacity(0.2),
            AppColors.white.withOpacity(0.0),
          ],
        ),
      ),
    );
  }
}

class UserImageGroup extends StatelessWidget {
  const UserImageGroup({
    super.key,
    required this.numberUser,
  });

  final int numberUser;

  @override
  Widget build(BuildContext context) {
    const double circleSize = 24 - 4;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          width: (24*4)-(12),
          child: Stack(
            children: [
              CircleAvatarCard(),
              Positioned(
                left: circleSize,
                child: CircleAvatarCard(),
              ),
              Positioned(
                left: 2 * circleSize,
                child: CircleAvatarCard(),
              ),
              Positioned(
                left: 3 * circleSize,
                child: CircleAvatarCard(),
              ),
            ],
          ),
        ),
        CircleUserNumberCount(numberUser: numberUser),
      ],
    );
  }
}

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
                  ..strokeWidth = 5
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
