import 'package:app_solvertic/models/notas.dart';
import 'package:flutter/material.dart';

class TeacherNotasHomePage extends StatefulWidget {
  @override
  _TeacherNotasHomePageState createState() => _TeacherNotasHomePageState();
}

class _TeacherNotasHomePageState extends State<TeacherNotasHomePage> {
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

  List trimestres = [
    '1er Trimestre',
    '2do Trimestre',
    '3er Trimestre',
  ];
  String trimestreSeleccionado = ''; // o cualquier valor por defecto

  @override
  void initState() {
    super.initState();
    // Asegúrate de que la lista trimestres no esté vacía antes de asignar el primer valor
    trimestreSeleccionado = trimestres.isNotEmpty ? trimestres[0] : '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
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
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context),
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
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context),
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
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context),
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
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context),
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
    ));
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Seleccione el Trimestre y al estudiante',
        style: TextStyle(fontSize: 18),
      ),
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Seleccione el Trimestre:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          DropdownButton(
            items: trimestres.map((trimestre) {
              return DropdownMenuItem(
                child: Text(
                  trimestre,
                  style: const TextStyle(color: Colors.black, fontSize: 14),
                ),
                value: trimestre,
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                trimestreSeleccionado = '$value';
              });
            },
            value: trimestreSeleccionado,
            style: const TextStyle(color: Colors.black),
          ),
          const Text(
            "Ingrese el nombre del Estudiante:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextField(
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            decoration: InputDecoration(
              hintText: 'Escribe una palabra de búsqueda',
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => NotasHomePage(),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white, // Fondo blanco
            side: BorderSide(width: 2, color: Colors.blue), // Borde azul
          ),
          child: const Text(
            'Continuar',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
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
