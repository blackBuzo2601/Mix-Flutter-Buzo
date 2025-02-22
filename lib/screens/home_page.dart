import 'package:flutter/material.dart';
import 'package:provider_mix/screens/pantalla_uno.dart';
import 'package:provider_mix/widgets/custom_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.movie_filter_outlined),
        title: Text("Menú Principal "),
        centerTitle: true,
      ),
      body: PantallaUno(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
