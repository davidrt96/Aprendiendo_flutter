void main() {
  //final Hero Wolverine = new Hero("Logan", "Volar");
  final Hero Wolverine = new Hero(name: "Logan", poder: "Regenerar");
  final Hero Wolverine2 = new Hero(name: "Logan2");

  print(Wolverine);
  print(Wolverine2);
}

class Hero {
  String name;
  String poder;

  /*Hero(String pname, String pPoder) //Inicializacion segura
      : name = pname,
        poder = pPoder;*/

  //Hero(this.name, this.poder); //Buena práctica

  Hero({required this.name, this.poder = "Sin poder"});

  //Override cambia las funciones por defecto de la clase
  @override
  String toString() {
    return "$name - $poder";
  }
}
