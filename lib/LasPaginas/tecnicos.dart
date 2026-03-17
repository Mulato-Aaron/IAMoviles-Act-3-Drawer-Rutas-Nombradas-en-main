import 'package:flutter/material.dart';

class Tecnicos extends StatelessWidget {
  const Tecnicos({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Técnicos")),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/Mulato-Aaron/imagenes1/refs/heads/main/tecnico.png', 
          width: 200, 
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}