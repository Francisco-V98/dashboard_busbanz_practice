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
                  child: TextAndCircleData(
                      textLeft: textLeft,
                      textRight: textRight,
                      textbuttom: textbuttom,
                      numberUser: numberUser),
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
                        child: CircleAnimation(),
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
