import 'package:flutter/material.dart';
import '../screens/navbar.dart';

class PerfilScreen extends StatefulWidget {
  const PerfilScreen({super.key});

  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  final String _nombre = 'Rudy Ajuchán';
  final String _email = 'rudyajuchan@example.com';
  final String _avatar = 'https://via.placeholder.com/150';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        title: const Text(
          'Inicio',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(_avatar),
            ),
            const SizedBox(height: 16),
            Text(
              _nombre,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _email,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _cerrarSesion,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 199, 54, 44),
              ),
              child: const Text('Cerrar sesión',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void _cerrarSesion() {
    // Implementa la lógica para cerrar la sesión del usuario
    print('Cerrando sesión...');
  }
}
