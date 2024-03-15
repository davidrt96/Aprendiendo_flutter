void main() {
  final number = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print("Lista original $number");
  print("Lista original sin duplicados ${number.toSet().toList()}");
  print("Lenght ${number.length}");
  print("Index 0: ${number[0]}");
  print("First: ${number.first}");
  print("Reverso: ${number.reversed}");

  final reversedNumbers = number.reversed;
  print("Iterable: $reversedNumbers");
  print("Lista: ${reversedNumbers.toList()}");
  print("Set: ${reversedNumbers.toSet()}"); //No tiene los valores duplicados

  final numerosMas5 = number.where((num) {
    return num > 5; //TRUE
  });

  print(">5 iterable: $numerosMas5"); //Es un iterable
  print(">5 set: ${numerosMas5.toSet()}"); //Es un set
}
