import 'package:flutter/material.dart';

class BrujulaScreen extends StatelessWidget {
  const BrujulaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brújula'),
      ),
      body: const Center(
        child: Text('Hola'),
      ),
    );
  }
}