import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: const Text('AppBar'), centerTitle: true),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          AppBarBusbanz(
            withBackground: false,
            title: 'Hola, Freddy',
            image: 'assets/images/imagen_de_conductor.png',
          ),
          SizedBox(height: 32),
          AppBarBusbanz(
            title: 'Hola, Freddy',
            image: 'assets/images/imagen_de_conductor.png',
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
