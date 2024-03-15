void main() {
  print("Inicio del programa");

  httpGet("https://www.google.es/").then((value) {
    print(value);
  }).catchError((err) {
    print("Error: $err");
  });

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  return  Future.delayed(const Duration(seconds: 1),(){
    throw "Error en la petición http";
  });
  //return "Tenemos un valor de la petición";
}
