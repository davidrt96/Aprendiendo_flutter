void main() async {
  print("Inicio del programa");
  try {
    final value = await httpGet("https://www.google.es/");
    print(value);
  } catch (err) {
    print("Tenemos un error: $err");
  }

  print("Fin del programa");
}

//Solo se puede poner await en funciones asincronas
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw "Error en la petición"; //Error no controlado
  //return "Tenemos un valor de la petición";
}
