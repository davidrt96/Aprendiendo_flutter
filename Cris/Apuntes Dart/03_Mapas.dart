void main() {
  final Map<String, dynamic> pokemon = {
    "name": "Ditto",
    "hp": 100,
    "isalive": true,
    "abilities": <String>["impostor", "Intimidacion"],
    "sprites": {1: "ditto/front.png", 2: "ditto/back.png"}
  };

  //UTILIZAR EL MAPA
  print("Name: ${pokemon["name"]}");
  print("Name: ${pokemon["sprites"]}");
  print("Back: ${pokemon["sprites"][2]}");
  print("Front: ${pokemon["sprites"][1]}");
}
