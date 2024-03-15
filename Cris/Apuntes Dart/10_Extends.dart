void main() {
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);

  print("Wind: ${chargePhone(windPlant)}");
  print("Nuclear: ${chargePhone(nuclearPlant)}");
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
  final PlantType type; // Nuclear, wind, water

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

//Implements para poder implementar un solo método, en vez de todos como el extends
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
