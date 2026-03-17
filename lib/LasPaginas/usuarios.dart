import 'package:flutter/material.dart';

class Usuarios extends StatelessWidget {
  const Usuarios({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Usuarios")),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/Mulato-Aaron/imagenes1/refs/heads/main/Foto1.JPG', 
          width: 200, 
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}