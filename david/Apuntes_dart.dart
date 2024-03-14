//Variables
void main(){
  var nombre1="David";
  print("hola"+nombre1);
  print("hola $nombre1");  

  int empleados=100;
  double pi=3.1415;
  var numero=1.0;
  
  print("$empleados - $pi - $numero");

  //Variable válida en null safety
  bool? isAlive;

  //Interpolar strings, inyectar al código
  print("$empleados - ${ nombre1.toUpperCase() }");
  
  //Variable final
  //es una constante
  //late final no tiene valor, pero a la que se le pone valor se hace final
  //const se crea en tiempo de contrucción

  String nombre="tony";
  print(nombre);
  print(nombre[0]);
  print(nombre[nombre.length -1]);

  bool activado=true;
  
  print(activado);

  //Lista dinámica, se puede introducir numeros, letras, caracteres etc
  List numeros=[1,2,3,4,5];
  print(numeros);

  //Lista de string
   List<int> numeros1=[1,2,3,4,5];
    print(numeros1);

  //Lista de tamaño fijo
  List masNumeros=List(10);
  print(masNumeros);
  masNumeros.add(1);  

  //Tipo map String seria la etiqueta de tipo string, y dynamic que el valor de cada string puede ser de cualquier tipo
  String propiedad='soltero';
  
  Map<String, dynamic> persona={
    'nombre':'Calos',
    'edad':32,
    'soltero':true
  };
  
  print(persona['nombre']);
  print(persona[propiedad]);
  
  Map<int,String> personas={
    1:"tony",
    2:"peter",
    9:"Strange"
  };
  
  personas.addAll({4:"banner"});
  print(personas);
  print(personas[2]);
}

//Condiciones
void condiciones(){
  bool activado=true;
  activado=!activado;
  
  if(activado){
    print("El motor esta funcionando");
  }else{
    print("Esta apagado");
  }
}

//Funciones
