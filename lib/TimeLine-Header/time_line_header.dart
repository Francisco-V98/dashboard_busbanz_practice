import 'package:flutter/material.dart';

class TimeLineHeader extends StatelessWidget {
  const TimeLineHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 80.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 6.0, // Grosor del borde
                      ),
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/imagen_de_andrea.png',
                        ),
                        radius: 25.0,
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 40.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        30.0,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 6.0,
                      ),
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/imagen_de_conductor.png'),
                        radius: 25.0,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 6.0,
                      ),
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/imagen_de_carro.png'),
                        radius: 25.0,
                      ),
                    ),
                  ),
                  // Third CircleAvatar
                ],
              ),
              // Text Information
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Freddy',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        ' • ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Andrea',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Mazda CX30',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        ' • ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'JWP192',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
