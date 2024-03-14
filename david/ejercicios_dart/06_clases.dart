void main() {
  final Hero wolverine = Hero(name: "Logan",power: "Regeneracion");

  print(wolverine); //El print convierte a tostring
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power="sin poder"}); //Constructor

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;


  @override //Modificar el comportamiento del toString dentro de una clase
  String toString() {
    
    return "$name + $power";
  }

}


