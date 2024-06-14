import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class TimeLineHeaderScreen extends StatelessWidget {
  const TimeLineHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Time Line Header'), centerTitle: true),
      backgroundColor: AppColors.bgBotLight,
      body: const Center(
        child: TimeLineHeader(),
      ),
    );
  }
}
