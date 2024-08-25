import 'package:flutter/material.dart';
import '../screens/navbar.dart';

class ContactoScreen extends StatefulWidget {
  const ContactoScreen({super.key});

  @override
  _ContactoScreenState createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  final String _nombre = 'Salon de Belleza';
  final String _direccion = '123 Calle Principal, Ciudad, País';
  final String _telefono = '+1 (555) 123-4567';
  final String _instagram = '@salondebellexa';
  final String _facebook = 'salondebellexa';
  final String _horario =
      'Lunes a Viernes: 9:00 AM - 7:00 PM\nSábados: 10:00 AM - 5:00 PM';
  final String _servicios =
      'Corte de cabello\nColoración\nManicura\nPedicura\nMaquillaje';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        title: const Text(
          'Contacto',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _nombre,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _direccion,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                _telefono,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _horario,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                _servicios,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(
                    Icons.youtube_searched_for,
                    color: Colors.pink[500],
                  ),
                  const SizedBox(width: 8),
                  Text(_instagram),
                  const SizedBox(width: 16),
                  Icon(
                    Icons.facebook,
                    color: Colors.blue[500],
                  ),
                  const SizedBox(width: 8),
                  Text(_facebook),
                ],
              ),
              const SizedBox(height: 32),
              Image.asset('assets/images/fondo_navbar.jpg', fit: BoxFit.cover),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Realizar cita',
                    style: TextStyle(
                      color: Colors.pink,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
