import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class AnimationCircleScreen extends StatelessWidget {
  const AnimationCircleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Circle'), centerTitle: true),
      backgroundColor: AppColors.bgBotLight,
      body: const Center(
        child: CircleAnimation(),
      ),
    );
  }
}
