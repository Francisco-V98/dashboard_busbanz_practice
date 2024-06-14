import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class TimeLineScreen extends StatelessWidget {
  const TimeLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Time Line'), centerTitle: true),
      body: const Center(
        child: TimeLine(),
      ),
    );
  }
}
