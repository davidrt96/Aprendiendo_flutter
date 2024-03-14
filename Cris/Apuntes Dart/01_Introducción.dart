/******INTRODUCCIÓN******/
int count = 5;
String miNombre = "Cris";
final String miApellido = "Arellano";
late final String miSegundoApellido; //Para asignar más tarde el valor al final
const int miEdad = 15;
void main() {
  miSegundoApellido = "Agudo";
  for (int i = 0; i < count; i++) {
    print(i);
    miNombre += i.toString();
    print(
        "Hola $miNombre $miApellido ${miSegundoApellido.toUpperCase()}, tu edad es de $miEdad");
  }
}
