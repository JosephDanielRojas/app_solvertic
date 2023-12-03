// ignore: file_names
import 'package:app_solvertic/homePageTutor.dart';
import 'package:app_solvertic/materias/fisica.dart';
import 'package:app_solvertic/materias/historia.dart';
import 'package:app_solvertic/materias/matematicas.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//Esta Pantalla muestra las materias que tiene registradas el estudiante y al ingresar a cada materia, puede ver los examenes de la materia

// ignore: use_key_in_widget_constructors
class RolExamenes extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 90,
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, //background color of button
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(
                          20) //content padding inside button
                      ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Historia()));
                  },
                  child: const Text(
                    'Historia',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Italic',
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 90,
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(
                          20) //content padding inside button
                      ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Matematicas()));
                  },
                  child: const Text(
                    'Matemáticas',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Italic',
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                height: 90,
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(
                          20) //content padding inside button
                      ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Fisica()));
                  },
                  child: const Text(
                    'Física',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Italic',
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // ignore: sort_child_properties_last
        child: const Icon(Icons.arrow_back),
        backgroundColor: Colors.blue,
        onPressed: () async {
          try {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePageTutor(),
              ),
            );
          } catch (e) {
            // ignore: avoid_print
            print('Error al volver');
          }
        },
      ),
    );
  }
}
