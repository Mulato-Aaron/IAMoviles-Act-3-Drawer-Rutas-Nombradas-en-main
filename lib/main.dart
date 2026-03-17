import 'package:flutter/material.dart';
import 'LasPaginas/productos.dart';
import 'LasPaginas/tecnicos.dart';
import 'LasPaginas/usuarios.dart';
import 'LasPaginas/desarrolladores.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'STEAM App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF171a21), // Azul muy oscuro Steam
        scaffoldBackgroundColor: const Color(0xFF1b2838), // Fondo Steam
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/productos': (context) => const Productos(),
        '/tecnicos': (context) => const Tecnicos(),
        '/usuarios': (context) => const Usuarios(),
        '/desarrolladores': (context) => const Desarrolladores(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STEAM'),
        backgroundColor: const Color(0xFF171a21),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xFF171a21),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF171a21), Color(0xFF66c0f4)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage('https://raw.githubusercontent.com/Mulato-Aaron/imagenes1/refs/heads/main/Captura.JPG'),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('STEAM', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Calle Falsa 123', style: TextStyle(color: Colors.white70, fontSize: 12)),
                          Text('555-0199', style: TextStyle(color: Colors.white70, fontSize: 12)),
                          Text('soporte@steam.com', style: TextStyle(color: Colors.white70, fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              _buildMenuItem(context, Icons.local_offer, 'Productos', '/productos'),
              _buildMenuItem(context, Icons.build, 'Técnicos', '/tecnicos'),
              _buildMenuItem(context, Icons.person, 'Usuarios', '/usuarios'),
              _buildMenuItem(context, Icons.code, 'Desarrolladores', '/desarrolladores'),
            ],
          ),
        ),
      ),
      body: const Center(child: Text('Bienvenido a Steam', style: TextStyle(fontSize: 24))),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF66c0f4)),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {
        Navigator.pop(context); // Cierra el drawer
        Navigator.pushNamed(context, route);
      },
    );
  }
}