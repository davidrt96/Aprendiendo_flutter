void main() {
  final miCuadrado = new Cuadrado(lado: -10);

  //miCuadrado.lado = -5;

  print("Area: ${miCuadrado.area}");
}

class Cuadrado {
  double _lado;

  Cuadrado({required double lado}) //Es un constructor que asigna el lado dado
      : assert(lado >= 0,
            "Lado debe ser >=0"), // Si la excepcion se cumple, se asigna valor
        _lado = lado;

  double areaCalc() {
    return _lado * _lado;
  }

  void set lado(double valor) {
    print("Set $valor");
    if (valor < 0) throw "Valor debe ser mayor de 0";

    _lado = valor;
  }

  double get area {
    return _lado * _lado;
  }
}
