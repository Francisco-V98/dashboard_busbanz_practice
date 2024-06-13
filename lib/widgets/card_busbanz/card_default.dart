import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class CardDefault extends StatelessWidget {
  final String textLeft;
  final String textRight;
  final String textbuttom;
  const CardDefault({
    super.key,
    required this.textLeft,
    required this.textRight,
    required this.textbuttom,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 64,
          decoration: BoxDecoration(
            color: AppColors.bgTopLight,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border.all(
              color: AppColors.black.withOpacity(0.5),
              width: 1.5,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.1),
                offset: const Offset(0, 4),
                blurRadius: 4,
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  color: AppColors.black.withOpacity(0.5),
                  text: textbuttom,
                  fontsize: 11,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 64,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border(
              left: BorderSide(
                color: AppColors.black.withOpacity(0.2),
                width: 8,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
