import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentation/providers/providers.dart';

class GiroscopioScreen extends ConsumerWidget {
  const GiroscopioScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final gyroscope$ = ref.watch(giroscopioProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Giróscopio'),
      ),
      body: Center(
        child: gyroscope$.when(
          data: (value) => Text(value.toString(), style: const TextStyle(fontSize: 30)), 
          error: (error, stackTrace) => Text('$error'), 
          loading: () => const CircularProgressIndicator()
        ),
      ),
    );
  }
}