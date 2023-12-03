import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  // ignore: unused_field
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // ignore: unused_field
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOLVERTIC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Mostrar Horarios
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('Horarios').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }

              var horarios = snapshot.data!.docs;
              List<Text> horariosWidgets = [];

              for (var horario in horarios) {
                var horarioData = horario.data() as Map<String, dynamic>;
                horariosWidgets.add(
                  Text(
                    'Aula: ${horarioData['Aula']}, Días: ${horarioData['Días']}, Horas_Clases: ${horarioData['Horas_Clases']}',
                  ),
                );
              }

              return Column(
                children: [
                  const Text('Horarios:'),
                  ...horariosWidgets,
                  Divider(),
                ],
              );
            },
          ),

          // Mostrar Rol de Examenes
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('Rol_Examenes').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }

              var rolesExamenes = snapshot.data!.docs;
              List<Text> rolesExamenesWidgets = [];

              for (var rolExamen in rolesExamenes) {
                var rolExamenData = rolExamen.data() as Map<String, dynamic>;
                rolesExamenesWidgets.add(
                  Text(
                    'Fecha: ${rolExamenData['Fecha'].toDate().toString()}',
                  ),
                );
              }

              return Column(
                children: [
                  const Text('Rol de Exámenes:'),
                  ...rolesExamenesWidgets,
                  Divider(),
                ],
              );
            },
          ),

          // Mostrar Materias
          StreamBuilder<QuerySnapshot>(
            stream: _firestore.collection('Materias').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const CircularProgressIndicator();
              }

              var materias = snapshot.data!.docs;
              List<Text> materiasWidgets = [];

              for (var materia in materias) {
                var materiaData = materia.data() as Map<String, dynamic>;
                materiasWidgets.add(
                  Text(
                    'Nombre: ${materiaData['Nombre_Materia']}, Descripción: ${materiaData['Descripcion']}, Sigla: ${materiaData['Sigla']}, Exámen: ${materiaData['Examen']}',
                  ),
                );
              }

              return Column(
                children: [
                  const Text('Materias:'),
                  ...materiasWidgets,
                  Divider(),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}