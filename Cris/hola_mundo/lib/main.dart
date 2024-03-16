import 'package:flutter/material.dart';
import 'package:hola_mundo/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:hola_mundo/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //Opcion para nombrar el widget

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Para quitar la palabra debug
        theme: ThemeData(
            useMaterial3: true, //Cogemos el tema de material 3
            colorSchemeSeed: Colors.purple), //Color para la app
        home:
            const CounterFunctionsScreen()); //El hijo siempre se define al final
  }
}
