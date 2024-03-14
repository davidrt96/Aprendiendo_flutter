/////////Base de Widget//////////
class MyApp extends StatelessWidget {

  //Constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text("Hola mundo"),
      ),
    );
  }
}
//Quitar el debug de la esquina
debugShowCheckedModeBanner: false,

//Separar la lógica, crear otro archivo dart con un nuevo widget  exportarlo al main
