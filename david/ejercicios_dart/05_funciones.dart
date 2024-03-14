void main() {
  print(greetEveryone());

  print("Suma: ${addTwoNumberes(10, 20)}");

  print(greetPerson(name: "David",message: "Hi, "));
}

String greetEveryone() => "hello everyone";

int addTwoNumberes(int a, int b) => a + b;

int addTwoNumberesOptionals(int a, [int b=0]) { //Ponemos 0 por defecto ya que es opcional
  //b = b ?? 0; 
  return a + b;
}

//El required es para poner un variable que hemos hecho opcional con:{}, ponerla obligatoria con el required
String greetPerson({required name,String message="Hola, "}){ 
  return "$message $name";
}
