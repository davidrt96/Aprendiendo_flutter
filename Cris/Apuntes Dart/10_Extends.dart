void main() {
  final WindPlant windPlant = WindPlant(initialEnergy: 100);

  print("Wind: ${chargePhone(windPlant)}");
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception("Not enought energy");
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type; // Nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount); //No se implementan los métodos
}

//extends hereda las variables, constructor y funciones
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(
            energyLeft: initialEnergy,
            type: PlantType.wind); //Llama al constructor por defecto

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//Implements
