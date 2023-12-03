import 'package:app_solvertic/rolExamenes.dart';
import 'package:flutter/material.dart';

class Historia extends StatelessWidget {
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
          child: Column(children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: const Column(
                  children: [
                    SelectableText(
                      "Primer Parcial",
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      children: [TextSpan(text: "Fecha del Examen: ")],
                    )),
                    SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [
                          TextSpan(text: "Miercoles 6 de Diciembre")
                        ])),
                    SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [TextSpan(text: "10:00 - 12:00")])),
                    Divider(),
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
                      "Segundo Parcial",
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      children: [TextSpan(text: "Fecha del Examen: ")],
                    )),
                    SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [
                          TextSpan(text: "Miercoles 20 de Diciembre")
                        ])),
                    SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [TextSpan(text: "10:00 - 12:00")])),
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
                      "Examen Final",
                      style: TextStyle(
                          fontFamily: 'Italic',
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    SelectableText.rich(TextSpan(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Italic',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      children: [TextSpan(text: "Fecha del Examen: ")],
                    )),
                    SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [TextSpan(text: "Miercoles 10 de Enero")])),
                    SelectableText.rich(TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Italic',
                            fontSize: 18),
                        children: [TextSpan(text: "10:00 - 12:00")])),
                    Divider(),
                  ],
                ))
          ]),
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
                builder: (context) => RolExamenes(),
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
