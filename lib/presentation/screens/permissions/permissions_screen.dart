import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miscelaneos/presentation/providers/providers.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Permisos'),
      ),
      body: const _PermissionsView(),
    );
  }
}

class _PermissionsView extends ConsumerWidget {
  const _PermissionsView();

  @override
  Widget build(BuildContext context, ref) {
    //final appState = ref.watch(appStateProvider);
    final permissions = ref.watch(permissionsProvider);
    return ListView(
      children: [
        CheckboxListTile(
          value: permissions.cameraGranted, 
          title: const Text('Camara'),
          subtitle: Text('${permissions.camera}'),
          onChanged: ( _ ) {
            ref.read(permissionsProvider.notifier).requestCameraAccess();
          }
        ),
        CheckboxListTile(
          value: permissions.photoLibraryGranted, 
          title: const Text('Galeria de fotos'),
          subtitle: Text('${permissions.photoLibrary}'),
          onChanged: ( _ ) {
            ref.read(permissionsProvider.notifier).requestPhotoLibraryAcces();
          }
        ),
        CheckboxListTile(
          value: permissions.locationGranted, 
          title: const Text('Localización'),
          subtitle: Text('${permissions.location}'),
          onChanged: ( _ ) {
            ref.read(permissionsProvider.notifier).requestLocationAccess();
          }
        ),
        CheckboxListTile(
          value: permissions.sensorsGranted, 
          title: const Text('Sensores'),
          subtitle: Text('${permissions.sensors}'),
          onChanged: ( _ ) {
            ref.read(permissionsProvider.notifier).requestSensorsAccess();
          }
        ),
        // ListTile(
        //   title: Text('$appState'),
        // )
      ],
    );
  }
}