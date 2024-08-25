import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../screens/navbar.dart';

class AgendarCitas extends StatefulWidget {
  const AgendarCitas({super.key});

  @override
  _AgendarCitasState createState() => _AgendarCitasState();
}

class _AgendarCitasState extends State<AgendarCitas> {
  String? selectedService;
  DateTime? selectedDateTime;
  String? selectedStylist;

  final List<String> services = [
    'Corte de cabello',
    'Manicura',
    'Pedicura',
    'Tinte de cabello',
    'Alisado',
  ];

  final List<String> stylists = [
    'Estilista A',
    'Estilista B',
    'Estilista C',
    'Estilista D',
    'Estilista E',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
      appBar: AppBar(
        title: const Text(
          'Agendar Cita',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Completa los campos por favor',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Selecciona un servicio:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            DropdownButton<String>(
              value: selectedService,
              hint: const Text('Selecciona un servicio'),
              onChanged: (value) {
                setState(() {
                  selectedService = value;
                });
              },
              items: services.map((service) {
                return DropdownMenuItem<String>(
                  value: service,
                  child: Text(service),
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Selecciona fecha y hora:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            InkWell(
              onTap: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 30)),
                );
                if (selectedDate != null) {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (selectedTime != null) {
                    setState(() {
                      selectedDateTime = DateTime(
                        selectedDate.year,
                        selectedDate.month,
                        selectedDate.day,
                        selectedTime.hour,
                        selectedTime.minute,
                      );
                    });
                  }
                }
              },
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    selectedDateTime == null
                        ? 'Seleccionar fecha y hora'
                        : DateFormat('yyyy-MM-dd HH:mm')
                            .format(selectedDateTime!),
                    style: TextStyle(
                      color: selectedDateTime == null
                          ? Colors.grey
                          : Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Selecciona un estilista:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            DropdownButton<String>(
              value: selectedStylist,
              hint: const Text('Selecciona un estilista'),
              onChanged: (value) {
                setState(() {
                  selectedStylist = value;
                });
              },
              items: stylists.map((stylist) {
                return DropdownMenuItem<String>(
                  value: stylist,
                  child: Text(stylist),
                );
              }).toList(),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para confirmar la cita
                print('Servicio seleccionado: $selectedService');
                print('Fecha y hora seleccionada: $selectedDateTime');
                print('Estilista seleccionado: $selectedStylist');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text('Confirmar Cita'),
            ),
          ],
        ),
      ),
    );
  }
}
