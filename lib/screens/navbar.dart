import 'package:flutter/material.dart';
import '../pages/agendar_citas.dart';
import '../pages/mis_citas.dart';
import '../pages/perfil.dart';
import '../pages/contacto.dart';
import 'home_screen.dart';
import 'package:get/get.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Nombre Usuario'),
            accountEmail: const Text('correoejemplo@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child:
                  ClipOval(child: Image.asset('assets/images/icon_avatar.png')),
            ),
            decoration: const BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                  image: AssetImage('assets/images/fondo_navbar.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Image.asset('assets/icons/home.png'),
            title: const Text(
              'Inicio',
              style: TextStyle(
                color: Color.fromARGB(255, 105, 105, 105),
              ),
            ),
            onTap: () => {
              Get.to(const HomeScreen()),
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/calendar.png'),
            title: const Text(
              'Agendar Cita',
              style: TextStyle(
                color: Color.fromARGB(255, 105, 105, 105),
              ),
            ),
            onTap: () => {
              Get.to(const AgendarCitas()),
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/list.png'),
            title: const Text('Mis citas',
                style: TextStyle(
                  color: Color.fromARGB(255, 105, 105, 105),
                )),
            onTap: () => {
              Get.to(const MisCitasScreen()),
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/user.png'),
            title: const Text('Perfil',
                style: TextStyle(
                  color: Color.fromARGB(255, 105, 105, 105),
                )),
            onTap: () => {
              Get.to(const PerfilScreen()),
            },
          ),
          ListTile(
            leading: Image.asset('assets/icons/phone.png'),
            title: const Text('Contacto',
                style: TextStyle(
                  color: Color.fromARGB(255, 105, 105, 105),
                )),
            onTap: () => {
              Get.to(const ContactoScreen()),
            },
          ),
          const Divider(),
          ListTile(
            leading: Image.asset('assets/icons/logout.png'),
            title: const Text('Cerrar Sesión',
                style: TextStyle(
                  color: Color.fromARGB(255, 105, 105, 105),
                )),
            onTap: () => {
              /* Get.to(const cerrar()), */
            },
          ),
        ],
      ),
    );
  }
}
