void main() {
  print(greetEveryOne());
  print(greetEveryOneFlecha());
  print("suma: ${addTwoNumbers(10, 20)}");
  print(saludoPersona(
      nombre: "Cris",
      mensaje: "Holii,")); //Pulsar control mas espacio para ver los valores
}

String greetEveryOne() {
  return "Hello everyone!!!";
}

String greetEveryOneFlecha() => "Hello everyone"; //HACE LO MISMO QUE ARRIBA

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersFlecha(int a, int b) => a + b;

int addTwoNumbersOpcional(int a, /*[int? b]*/ [int b = 0]) {
  //Hace que el segundo parámetro sea opcional de recibir
  //b ??= 0; //Si b no tiene valor, pone un 0 como valor, para [int? b]
  return a + b;
}

String saludoPersona({required nombre, String mensaje = "Hola,"}) {
  //Las llaves hacen opcionales las variables
  return "$mensaje $nombre";
}
