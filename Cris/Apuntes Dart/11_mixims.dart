abstract class Animal {}

abstract class Mamifero extends Animal {} //Todas las prop se pasan a mamífero

abstract class Ave extends Animal {} //Todas las propiedades se pasan a ave

abstract class Pez extends Animal {} //Todas las propiedades se pasan a pez

mixin class Volador {
  void volar() => print("Estoy volando");
}

mixin class Caminante {
  void caminar() => print("Estoy caminando");
}

mixin class Nadador {
  void nadar() => print("Estoy nadando");
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final Delfin flipper = Delfin();
  flipper.nadar();
}
