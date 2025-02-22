import 'package:flutter/material.dart';
import 'package:provider_mix/screens/pantalla_dos.dart';
import 'package:provider_mix/screens/pantalla_tres.dart';
import 'package:provider_mix/screens/pantalla_uno.dart';
import 'package:provider_mix/widgets/custom_bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.movie_filter_outlined),
          title: Text("Menú Principal "),
          centerTitle: true,
        ),
        body: _IndiceSeleccionado(),
        bottomNavigationBar: CustomBottomNavBar());
  }
}

class _IndiceSeleccionado extends StatelessWidget {
  const _IndiceSeleccionado({super.key});

  @override
  Widget build(BuildContext context) {
    int indice = 0;

    switch (indice) {
      case 0:
        return PantallaUno();
      case 1:
        return PantallaDos();
      case 2:
        return PantallaTres();
      default:
        return PantallaUno();
    }
  }
}
