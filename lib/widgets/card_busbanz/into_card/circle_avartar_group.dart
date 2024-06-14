import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

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