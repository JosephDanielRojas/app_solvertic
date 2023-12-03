import 'package:app_solvertic/horarios.dart';
import 'package:flutter/material.dart';

class Jueves extends StatelessWidget {
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
              Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Column(
                    children: [
                      SelectableText(
                        "Horario de Clases: ",
                        style: TextStyle(
                            fontFamily: 'Italic',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [TextSpan(text: "Inicio: 08:00 ")],
                      )),
                      SelectableText.rich(TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Italic',
                              fontSize: 18),
                          children: [TextSpan(text: "Salida: 10:00")])),
                      Divider(),
                      SelectableText.rich(TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Italic',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [TextSpan(text: "Materia: Matemáticas")])),
                      Divider(),
                      SelectableText.rich(TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Italic',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [TextSpan(text: "Aula: A214")])),
                      Divider(),
                    ],
                  )),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: const Column(
                    children: [
                      SelectableText(
                        "Horario de Clases: ",
                        style: TextStyle(
                            fontFamily: 'Italic',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(),
                      SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [TextSpan(text: "Inicio: 10:00 ")],
                      )),
                      SelectableText.rich(TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Italic',
                              fontSize: 18),
                          children: [TextSpan(text: "Salida: 12:00")])),
                      Divider(),
                      SelectableText.rich(TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Italic',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [TextSpan(text: "Materia: Física")])),
                      Divider(),
                      SelectableText.rich(TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Italic',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [TextSpan(text: "Aula: A214")])),
                      Divider(),
                    ],
                  )),
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
                builder: (context) => Horarios(),
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
