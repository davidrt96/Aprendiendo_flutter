import 'package:flutter/material.dart';

//El atajo es stles
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
  //Se crea un estado, otra clase que sí tiene funcionalidad
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Barra superior
        title: const Text("Counter Screen"),
      ),
      //Pantalla para colocar elementos
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //Para alinear al centro
        children: [
          Text(
            "$clickCounter",
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(
            "Click${clickCounter == 1 ? "" : "s"}",
            style: const TextStyle(fontSize: 25),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            setState(() {}); //Para refrescar la pantalla
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
