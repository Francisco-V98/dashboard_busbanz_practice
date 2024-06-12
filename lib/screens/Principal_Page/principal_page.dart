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
                const Positioned(
                  top: 110,
                  left: 0,
                  right: 0,
                  child: CalendarContainerGroup(),
                ),
                const SizedBox(
                  height: 180,
                  child: Center(
                    child: AppBarBusbanz(
                      title: "Hola, Freddy",
                      image: "assets/images/imagen_de_conductor.png",
                    ),
                  ),
                ),
                const Positioned(
                  top: 344,
                  child: TimeLine(),
                ),
                const Positioned(
                  top: 252,
                  child: TimeLineHeader(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
