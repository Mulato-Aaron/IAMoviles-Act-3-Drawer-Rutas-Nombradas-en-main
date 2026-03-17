import 'package:flutter/material.dart';

class Desarrolladores extends StatelessWidget {
  const Desarrolladores({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desarrolladores")),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/Mulato-Aaron/imagenes1/refs/heads/main/capcom.png', 
          width: 200, 
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}