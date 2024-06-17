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
                 SafeArea(
                  child: Column(
                    children: [
                      const AppBarBusbanz(
                        title: 'Hola, Freddy',
                        image: 'assets/images/imagen_de_conductor.png',
                      ),
                      const CalendarContainerGroup(),
                      const SizedBox(
                        height: 60,
                      ),
                      const Row(
                        children: [
                          TimeLineHeader(),
                        ],
                      ),
                      Row(
                        children: [
                          const Column(
                            children: [
                              TimeLine(),
                              SizedBox(
                                height: 18,
                              )
                            ],
                          ),
                          SizedBox(
                            width: size.width * 0.77,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                CardActiveRoute(
                                  textLeft: 'Estudiante',
                                  textRight: 'Colegio',
                                  textbuttom: 'Ruta AB32-5',
                                  numberUser: 12,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                CardDefault(
                                  textLeft: "Colegio",
                                  textRight: "Estudiantes",
                                  textbuttom: "Ruta AB32-5",
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
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
