import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mix/providers/indice_principal_provider.dart';
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
    return Consumer<IndicePrincipalProvider>(
        builder: (context, value, child) => Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.movie_filter_outlined),
              title: Text("Menú Principal "),
              centerTitle: true,
            ),
            body: _IndiceSeleccionado(
              instancia: value,
            ),
            bottomNavigationBar: CustomBottomNavBar()));
  }
}

class _IndiceSeleccionado extends StatelessWidget {
  IndicePrincipalProvider instancia;
  _IndiceSeleccionado({required this.instancia, super.key});

  @override
  Widget build(BuildContext context) {
    switch (instancia.indicePrincipal) {
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
