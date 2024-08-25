import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
              SizedBox(
                height: 300,
                child: GoogleMap(
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(40.730610, -73.935242),
                    zoom: 15,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId('salon'),
                      position: const LatLng(40.730610, -73.935242),
                      infoWindow: InfoWindow(
                        title: _nombre,
                        snippet: _direccion,
                      ),
                    ),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}