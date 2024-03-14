/******TIPOS DE VARIABLES******/
void main() {
  final String nombre = "Ditto"; //Tipo String
  final int hp = 100; //Tipo Int
  final bool isAlive = true; //Tipo booleano
  final List<String> abilities = ["impostor", "Intimidación"]; //Tipo lista
  final sprites = <String>["ditto/front.png", "ditto/back.png"]; //Tipo lista
  final Set<String> abilitiesSet = {"impostor", "Intimidacion"}; //Tipo Set

  //dynamic == null. Las variables dinámicas es cualquier tipo de dato
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $nombre
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  $abilitiesSet
  """);
}
