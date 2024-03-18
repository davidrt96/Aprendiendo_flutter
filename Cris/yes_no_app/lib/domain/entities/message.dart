//Dentro de la carpeta dominio se escribe codigo dart, no flutter

enum FromWho { mine, hers }

class Message {
  final String text;
  final String? imageUrl; //Opcional
  final FromWho fromWho;

  Message({required this.text, this.imageUrl, required this.fromWho});
}
