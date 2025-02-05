import 'package:flutter/material.dart';

//Pantalla para tener un control del mapa, agregar marcadores, mover la toma del mapa, etc
class ControlledMapScreen extends StatelessWidget {
  const ControlledMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controlled Map Screen'),
      ),
    );
  }
}
