import 'package:dashboard_busbanz_practice/widgets/TImeLine_Container/time_line.dart';
import 'package:dashboard_busbanz_practice/widgets/TimeLine-Header_Container/time_line_header_container.dart';
import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                  height: size.height * 0.14,
                  child: const Center(
                    child: AppBarBusbanz(
                      title: "Hola, Freddy",
                      image: "assets/images/imagen_de_conductor.png",
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.4,
                  child: const TimeLine(),
                ),
                Positioned(
                  top: size.height * 0.45,
                  right: size.width * 0.07,
                  width: size.width * 0.75,
                  child: const CardActiveRoute(),
                ),
                Positioned(
                  top: size.height * 0.3,
                  child: const TimeLineHeader(),
                ),
                Positioned(
                  width: size.width * 0.75,
                  right: size.width * 0.07,
                  top: size.height * 0.67,
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
