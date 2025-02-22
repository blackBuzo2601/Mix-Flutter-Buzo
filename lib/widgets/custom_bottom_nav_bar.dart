import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mix/providers/indice_principal_provider.dart';
import 'package:provider_mix/widgets/single_bottom_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<IndicePrincipalProvider>(
      builder: (context, value, child) => BottomNavigationBar(
        onTap: (tocado) {
          //obtenemos la instancia de IndicePrincipalProvider para poder modificarlo despues
          final indiceActual = context.read<IndicePrincipalProvider>();
          indiceActual.actualizarIndice(tocado);
        },
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
      ),
    );
  }
}
