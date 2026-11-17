import 'package:todo/Models/Pokemon.dart';

class User {

  final String nombre;
  final String contrasena;
  final List<Pokemon> pokemon = [

  ];
  const User(this.nombre,this.contrasena);

}