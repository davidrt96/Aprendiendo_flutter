import 'package:flutter/material.dart';

//El atajo es stles
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
  //Se crea un estado, otra clase que sí tiene funcionalidad
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //Barra superior
          centerTitle: true,
          title: const Text("Counter Functions Screen"),
          leading: IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ), //Con leading pones el icono a la izquierda
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ), //Con actions puedes poner varios iconos a la derecha
          ],
        ),

        //Pantalla para colocar elementos
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Para alinear al centro
          children: [
            Text(
              "$clickCounter",
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              "Click${clickCounter == 1 ? "" : "s"}",
              style: const TextStyle(fontSize: 25),
            ),
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButtom(
                icon: Icons.plus_one,
                onPressed: () {
                  clickCounter++;
                  setState(() {});
                }),
            const SizedBox(
              height: 15,
            ),
            CustomButtom(
                icon: Icons.exposure_minus_1,
                onPressed: () {
                  if (clickCounter == 0) return;
                  clickCounter--;
                  setState(() {});
                }),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        //shape: const StadiumBorder(), //Hace que el boton sea cirular
        enableFeedback: true, //Añade un sonido al botón
        elevation: 5, //Sombra
        backgroundColor: Colors.yellow,
        onPressed: onPressed,
        child: Icon(icon));
  }
}
