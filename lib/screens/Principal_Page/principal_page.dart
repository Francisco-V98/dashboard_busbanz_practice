import 'package:dashboard_busbanz_practice/widgets/widgets.dart';

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.asset(
                    "assets/images/fondo_amarillo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: size.height * 0.13,
                  left: 0,
                  right: 0,
                  child: const CalendarContainerGroup(),
                ),
                SizedBox(
                  height: size.height * 0.20,
                  child: const Center(
                    child: AppBarBusbanz(
                      title: "Hola, Freddy",
                      image: "assets/images/imagen_de_conductor.png",
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.335,
                  child: const TimeLine(),
                ),
                Positioned(
                  top: size.height * 0.40,
                  right: size.width * 0.07,
                  width: size.width * 0.75,
                  child: const CardActiveRoute(
                    textLeft: 'Estudiante',
                    textRight: 'Colegio',
                    textbuttom: 'Ruta AB32-5',
                    numberUser: 12,
                  ),
                ),
                Positioned(
                  top: size.height * 0.270,
                  child: const TimeLineHeader(),
                ),
                Positioned(
                  width: size.width * 0.75,
                  right: size.width * 0.07,
                  top: size.height * 0.575,
                  child: const CardDefault(
                    textLeft: "Colegio",
                    textRight: "Estudiantes",
                    textbuttom: "Ruta AB32-5",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
