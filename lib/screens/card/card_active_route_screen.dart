import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class CardActiveRouteScreen extends StatelessWidget {
  const CardActiveRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(title: const Text('Card Default'), centerTitle: true),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          CardActiveRoute(
            textLeft: 'Estudiante',
            textRight: 'Colegio',
            textbuttom: 'Ruta AB32-5',
            numberUser: 12,
          ),
        ],
      ),
    );
  }
}
