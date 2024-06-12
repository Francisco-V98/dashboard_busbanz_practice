import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardDefaultScreen extends StatelessWidget {
  const CardDefaultScreen({super.key});

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
    return const Column(
      children: [
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.all(16),
          child: CardDefault(
            textLeft: 'Colegio',
            textRight: 'Estudiante',
            textbuttom: 'Ruta AB32-5',
          ),
        ),
      ],
    );
  }
}
