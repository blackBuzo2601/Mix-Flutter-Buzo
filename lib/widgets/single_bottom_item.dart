import 'package:flutter/material.dart';

class SingleBottomItem extends StatelessWidget {
  final String rutaIcono;

  const SingleBottomItem({required this.rutaIcono, super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.121654501216545,
      height: screenHeight * 0.0609756097560976,
      child: Image.asset(
        rutaIcono,
        fit: BoxFit.cover,
      ),
    );
  }
}
