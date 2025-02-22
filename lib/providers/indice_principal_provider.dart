import 'package:flutter/material.dart';

class IndicePrincipalProvider extends ChangeNotifier {
  int _indicePrincipal = 0;
  get indicePrincipal => _indicePrincipal;

  void actualizarIndice(int indice) {
    _indicePrincipal = indice;
    notifyListeners();
  }
}
