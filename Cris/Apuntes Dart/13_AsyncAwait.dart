//Solo se puede utilizar await dentro de una función asíncrona
//El await permite a la función esperar hasta obtener un resultado y posteriormente finalizar la funcion
void main() async {
  print("Inicio del programa");

  try {
    final value = await httpGet("https://fernando-herrera.com/cursos");
    print(value);
  } catch (err) {
    print("Tenemos un error $err");
  }

  print("Fin del programa");
}

//La funcion async siempre devuelve un Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw "Error en la peticion"; //Error personalizado que se mostrará en el catch

  //return "Tenemos un valor de la peticion";
}
