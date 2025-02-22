import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mix/providers/indice_principal_provider.dart';
import 'package:provider_mix/screens/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => IndicePrincipalProvider(),
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
