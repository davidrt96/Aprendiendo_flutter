//Pueden ser retornados y usados como objetos funciones o metodos.
//Pueden emitir valores periodicamente, una vez o nunca

void main() {
  emitNumber().listen((value) {
    print("Stream value $value");
  });
}

//Necesita un escuchador para que funcione

Stream<int> emitNumber() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  }).take(5); //El take pone un limite de X emisiones
}
