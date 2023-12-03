import 'package:app_solvertic/horarios.dart';
import 'package:app_solvertic/rolExamenes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//Esta Pantalla muestra las pantallas de Horarios y Rol de Examenes

// ignore: use_key_in_widget_constructors
class HomePageTutor extends StatelessWidget {
  // ignore: unused_field
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // ignore: unused_field
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SOLVERTIC',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Italic',
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: SingleChildScrollView(
          child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey,
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Horarios Estudiante",
                      style: TextStyle(
                          fontFamily: 'Italic',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Image.asset('iconos/calendario.png'),
                      tooltip: "Mensaje",
                      onPressed: () async {
                        try {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Horarios(),
                            ),
                          );
                        } catch (e) {
                          // ignore: avoid_print
                          print('Error al cargar la Pagina');
                        }
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(5),
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey,
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Rol de Examenes",
                      style: TextStyle(
                          fontFamily: 'Italic',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Image.asset('iconos/resultados-de-la-prueba.png'),
                      tooltip: "Mensaje",
                      onPressed: () async {
                        try {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RolExamenes(),
                            ),
                          );
                        } catch (e) {
                          // ignore: avoid_print
                          print('Error al cargar la Pagina');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
