void main() async {
  print("Inicio del programa");
  try {
    final value = await httpGet("https://www.google.es/");
    print("exito: $value");
  } on Exception catch(err){ //Este catch(err) te muestra el error de la excepción creada en la función
    print("Tenemos una Excepion $err");
  } catch (err) {
    print("UPS algo terrible pasó: $err");
  } finally {
    print("Fin del try y catch");
  }

  print("Fin del programa");
}

//Solo se puede poner await en funciones asincronas
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception("No hay parámetros en el URL");
  //throw "Error en la petición"; //Error no controlado
  //return "Tenemos un valor de la petición";
}
