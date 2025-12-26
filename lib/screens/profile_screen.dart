
import 'package:flutter/material.dart';
import 'package:menouts/widgets/drawe_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: const Center(
        child: Text('Contenido de la pantalla de perfil'),
      ),
    );
  }
}