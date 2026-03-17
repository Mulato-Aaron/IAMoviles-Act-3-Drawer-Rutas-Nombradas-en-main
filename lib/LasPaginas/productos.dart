import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Productos")),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/Mulato-Aaron/imagenes1/refs/heads/main/juego1.jpg', 
          width: 200, 
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}