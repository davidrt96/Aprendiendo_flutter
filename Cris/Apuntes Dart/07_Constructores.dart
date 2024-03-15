void main() {
  final Map<String, dynamic> rawJson = {
    "name": "Tony",
    "poder": "Money",
    "isAlive": true
  };

  final Hero ironman = Hero.fromJson(rawJson);

  //final Hero ironman = Hero(
  //  isAlive: rawJson["isAlive"] ?? false, poder: "Money", nombre: "Tony");
  print(ironman);
}

class Hero {
  String nombre;
  String poder;
  bool isAlive;

  Hero({required this.nombre, required this.poder, required this.isAlive});
  Hero.fromJson(Map<String, dynamic> json)
      : nombre = json["name"] ??
            "No name found", //Setea el nombre, si no lo encuentra le setea No name found
        poder = json["poder"] ?? "No power found",
        isAlive = json["isAlive"] ?? "No found";

  @override
  String toString() {
    return "$nombre, $poder, isAlive: ${isAlive ? 'YES' : 'NOPE'}";
  }
}
