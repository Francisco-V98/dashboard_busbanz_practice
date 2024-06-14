import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class TextAndCircleData extends StatelessWidget {
  const TextAndCircleData({
    super.key,
    required this.textLeft,
    required this.textRight,
    required this.textbuttom,
    this.numberUser = 0,
    this.withCircleAvatar = true,
  });

  final String textLeft;
  final String textRight;
  final String textbuttom;
  final int numberUser;
  final bool withCircleAvatar;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        withCircleAvatar
            ? const Spacer()
            : const SizedBox.shrink(),
        withCircleAvatar
            ? UserImageGroup(numberUser: numberUser)
            : const SizedBox.shrink(),
      ],
    );
  }
}