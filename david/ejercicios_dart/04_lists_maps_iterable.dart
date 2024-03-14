void main(){
  final numbers=[1,2,3,4,4,5,5,6,7,7,8,9,10];

  print("List original $numbers");
  print("Length ${numbers.length}");
  print("Index 0 ${numbers[0]}");
  print("First ${numbers.first}");

  print("Reversed ${numbers.reversed}");

  final reverserNumbers=numbers.reversed;
  print("Iterable: $reverserNumbers");
  print("List: ${ reverserNumbers.toList()}");
  print("Set: ${ reverserNumbers.toSet()}"); //No tiene valores duplicados

  final numbersGreaterThan5=numbers.where((int num){
    return num >5; //true
  });

  print(">5: $numbersGreaterThan5" );
  print(">5: ${numbersGreaterThan5.toSet()}" );
}