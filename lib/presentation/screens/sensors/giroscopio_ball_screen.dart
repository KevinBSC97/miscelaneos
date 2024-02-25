import 'package:flutter/material.dart';

class GiroscopioBallScreen extends StatelessWidget {
  const GiroscopioBallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acelerómetro'),
      ),
      body: const Center(
        child: Text('Hola'),
      ),
    );
  }
}