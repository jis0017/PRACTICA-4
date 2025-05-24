import 'package:flutter/material.dart';
import 'package:tareas/widget/agregar.dart';
import 'package:tareas/widget/mostrar.dart';

class Tareas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Clase();
  }
}

class Clase extends State<Tareas> {
  int seleccionindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TAREAS',
          style: TextStyle(color: const Color.fromARGB(255, 253, 253, 253)),
        ),
        backgroundColor: const Color.fromARGB(255, 96, 236, 99),
      ),
      body: seleccionindex == 0 ? Agregar() : Mostrar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: 'AGREGAR TAREA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_mini),
            label: 'MOSTRAR TAREA',
          ),
        ],
        currentIndex: seleccionindex,
        selectedItemColor: const Color.fromARGB(255, 19, 30, 237),
        onTap: (index) {
          setState(() {
            seleccionindex = index;
          });
        },
      ),
    );
  }
}
