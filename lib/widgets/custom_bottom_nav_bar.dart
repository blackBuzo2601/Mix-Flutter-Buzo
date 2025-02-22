import 'package:flutter/material.dart';
import 'package:provider_mix/widgets/single_bottom_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //dispositivo base
    //411px ancho
    //820px largo

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            label: "Videojuegos",
            icon: SingleBottomItem(
              rutaIcono: "assets/juegos.png",
            )),
        BottomNavigationBarItem(
          label: "Películas",
          icon: SingleBottomItem(
            rutaIcono: "assets/peliculas.png",
          ),
        ),
        BottomNavigationBarItem(
          label: "Series",
          icon: SingleBottomItem(
            rutaIcono: "assets/series.png",
          ),
        )
      ],
    );
  }
}
