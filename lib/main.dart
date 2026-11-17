import 'package:flutter/material.dart';
import 'package:todo/Routes/rutas.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: Rutas.rutaInicial,
     routes: Rutas.rutas,
   );
  }
}