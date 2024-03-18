import 'package:flutter/material.dart';
import 'anadirtarea.dart';
import 'tarea.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TODO list',
      home: TodoListScreen(),
    );
  }
}

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<String> tareas = ["Tarea 1", "Tarea 2", "Tarea 3"];

  void agregarTarea(String tarea) {
    setState(() {
      tareas.add(tarea);
    });
  }

  void eliminarTarea(int index) {
    setState(() {
      tareas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO LIST'),
      ),
      body: Column(
        children: [
          AnadirTarea(agregarTarea),
          Expanded(
            child: ListView.builder(
              itemCount: tareas.length,
              itemBuilder: (context, index) {
                return Tarea(
                  titulo: tareas[index],
                  onDelete: () {
                    eliminarTarea(index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
