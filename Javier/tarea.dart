import 'package:flutter/material.dart';

class Tarea extends StatelessWidget {
  final String titulo;
  final VoidCallback onDelete;

  const Tarea({
    super.key,
    required this.titulo,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(titulo),
          ),
          ElevatedButton(
            onPressed: onDelete,
            child: const Text(
              "-",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
