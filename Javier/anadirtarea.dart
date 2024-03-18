import 'package:flutter/material.dart';

class AnadirTarea extends StatelessWidget {
  final Function(String) onAgregarTarea;

  AnadirTarea(this.onAgregarTarea, {super.key});

  final TextEditingController _textoTarea = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textoTarea,
              decoration: const InputDecoration(hintText: "Nueva Tarea"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              onAgregarTarea(_textoTarea.text);
              _textoTarea.clear();
            },
            child: const Text(
              "+",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
