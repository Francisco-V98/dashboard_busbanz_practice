import 'package:dashboard_busbanz_practice/TImeLine/time_line.dart';
import 'package:dashboard_busbanz_practice/TimeLine-Header/time_line_header.dart';
import 'package:dashboard_busbanz_practice/config/theme/app_colors.dart';
import 'package:dashboard_busbanz_practice/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
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
                const SizedBox(
                  height: 170,
                  child: Center(
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
                  top: size.height * 0.42,
                  right: size.width * 0.09,
                  width: size.width * 0.75,
                  child: const CardActiveRoute(),
                ),
                Positioned(
                  top: size.height * 0.3,
                  child: const TimeLineHeader(),
                ),
                Positioned(
                  width: size.width * 0.75,
                  right: size.width * 0.09,
                  top: size.height * 0.60,
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
