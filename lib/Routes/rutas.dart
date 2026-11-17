import 'package:flutter/material.dart';
import 'package:todo/screens/screen.dart';

class Rutas {
  static const String rutaInicial = "/perfil";

  static final Map<String, Widget Function(BuildContext)> rutas = {
    "/home": (BuildContext context) => homescreen(),
    "/pokedex": (BuildContext context) => itemscreen(),
    "/login" : (BuildContext context) => Login(),
    "/perfil" : (BuildContext context) => Login(),

  };
}
