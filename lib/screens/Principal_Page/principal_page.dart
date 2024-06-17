import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgBotLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderSection(),
          SizedBox(height: 8),
          BodySection(),
        ],
      ),
    );
  }
}

class BodySection extends StatelessWidget {
  const BodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 24),
          child: TimeLine(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimeLineHeader(),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(left: 62, right: 16),
              child: Column(
                children: [
                  CardActiveRoute(
                    textLeft: 'Estudiante',
                    textRight: 'Colegio',
                    textbuttom: 'Ruta AB32-5',
                    numberUser: 12,
                  ),
                  SizedBox(height: 16),
                  CardDefault(
                    textLeft: "Colegio",
                    textRight: "Estudiantes",
                    textbuttom: "Ruta AB32-5",
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.asset(
            "assets/images/fondo_amarillo.png",
            fit: BoxFit.cover,
          ),
        ),
        const SafeArea(
          child: Column(
            children: [
              AppBarBusbanz(
                title: 'Hola, Freddy',
                image: 'assets/images/imagen_de_conductor.png',
              ),
              CalendarContainerGroup(),
            ],
          ),
        ),
      ],
    );
  }
}

