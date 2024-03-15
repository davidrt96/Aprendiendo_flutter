//Acuerdo de que en un futuro tendrás un valor

void main() {
  print("Inicio del programa");
  httpGet("https://fernando-herrera.com/cursos").then((value) {
    print(value);
  }).catchError((err) {
    print("$err");
  });
  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw "Error en la peticion http";
    //return "Respuesta de la petición http";
  });
}
