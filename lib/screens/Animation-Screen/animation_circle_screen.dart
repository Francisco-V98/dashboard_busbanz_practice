import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class AnimationCircleScreen extends StatelessWidget {
  const AnimationCircleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgBotLight,
      body: Center(
        child: AnimationCircle(),
      ),
    );
  }
}
