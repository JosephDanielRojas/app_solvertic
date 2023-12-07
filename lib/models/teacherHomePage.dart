import 'package:app_solvertic/models/cursosHomePage.dart';
import 'package:flutter/material.dart';

class TeacherHomePage extends StatelessWidget {
  String getGreetingMessage() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Buenos Días!';
    }
    if (hour < 17) {
      return 'Buenas Tardes!';
    }
    return 'Buenas Noches!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CustomHeader(saludo: getGreetingMessage()),
            const SizedBox(height: 30),
            const Text('Tus Materias',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 2),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.8,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CursosHomePage(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          'assets/icons/historia.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Historia',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CursosHomePage(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          'assets/icons/fisica2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Física',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CursosHomePage(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          'assets/icons/quimica2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Quimica',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CursosHomePage(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          'assets/icons/biology-7846934-6293614.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Biología',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomHeader extends StatelessWidget {
  final String saludo;

  const _CustomHeader({required this.saludo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        height: 120, // Ajusta este valor según la altura que desees
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
            image: AssetImage(
                'assets/icons/Circle.png'), // Cambia 'tu_imagen.png' por el nombre real de tu archivo.
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Aquí puedes ajustar la posición y el tamaño de tu diseño de fondo si lo necesitas
            // usando Positioned widget.

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hola, \n$saludo',
                    style: const TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                const Icon(Icons.notifications, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
