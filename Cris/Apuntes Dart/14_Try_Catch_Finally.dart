//Solo se puede utilizar await dentro de una función asíncrona
//El await permite a la función esperar hasta obtener un resultado y posteriormente finalizar la funcion
void main() async {
  print("Inicio del programa");

  try {
    final value = await httpGet("https://fernando-herrera.com/cursos");
    print(value);
  } on Exception catch (err) {
    print("Tenemos una Exception: $err"); //Excepcioón que hemos creado abajo
  } catch (err) {
    print("OOP!! algo terrible pasó $err");
  } finally {
    print("Fin del try y catch");
  }

  print("Fin del programa");
}

//La funcion async siempre devuelve un Future
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw new Exception("No hay parámetros en el URL"); //Error controlado

  //throw "Error en la peticion"; //Error personalizado que se mostrará en el catch. Error no controlado

  //return "Tenemos un valor de la peticion";
}
