import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/navbar.dart';

class MisCitasScreen extends StatefulWidget {
  const MisCitasScreen({super.key});

  @override
  _MisCitasScreenState createState() => _MisCitasScreenState();
}

class _MisCitasScreenState extends State<MisCitasScreen> {
  List<Cita> citas = [
    Cita(
      servicio: 'Corte de cabello',
      fecha: '2023-06-15',
      hora: '15:30',
      estetica: 'Estilista A',
    ),
    Cita(
      servicio: 'Manicura',
      fecha: '2023-06-20',
      hora: '10:00',
      estetica: 'Estilista B',
    ),
    Cita(
      servicio: 'Tinte de cabello',
      fecha: '2023-07-01',
      hora: '17:45',
      estetica: 'Estilista C',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        title: const Text(
          'Mis citas',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: citas.length,
        itemBuilder: (context, index) {
          final cita = citas[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cita.servicio,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Fecha: ${cita.fecha}'),
                    const SizedBox(height: 4),
                    Text('Hora: ${cita.hora}'),
                    const SizedBox(height: 4),
                    Text('Estilista: ${cita.estetica}'),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Lógica para editar la cita
                            _editarCita(cita);
                          },
                          child: const Text('Editar'),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            // Lógica para cancelar la cita
                            _cancelarCita(cita);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 199, 54, 44),
                          ),
                          child: const Text('Cancelar',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _editarCita(Cita cita) {
    // Implementa la lógica para editar la cita
    print('Editando cita: $cita');
  }

  void _cancelarCita(Cita cita) {
    // Implementa la lógica para cancelar la cita
    print('Cancelando cita: $cita');
  }
}

class Cita {
  final String servicio;
  final String fecha;
  final String hora;
  final String estetica;

  Cita({
    required this.servicio,
    required this.fecha,
    required this.hora,
    required this.estetica,
  });
}
