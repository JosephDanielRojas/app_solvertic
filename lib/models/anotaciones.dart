import 'package:app_solvertic/models/librosHomePage.dart';
import 'package:flutter/material.dart';

class Anotaciones extends StatelessWidget {
  List anotacionesDocente = [
    'Impuntual',
    'No cumplío con la tarea',
    'Irrespetuoso',
    'Sin Observaciones'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LibrosHomePage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        const Row(
                          children: <Widget>[
                            Text('Observaciones',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Padding(padding: EdgeInsets.all(5)),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        Row(
                          children: <Widget>[
                            const SelectableText.rich(TextSpan(
                                text: 'Seleccionó: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20))),
                            DropdownButton(
                              items: anotacionesDocente.map((anotacion) {
                                return DropdownMenuItem(
                                  // ignore: sort_child_properties_last
                                  child: Text(
                                    anotacion,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 14),
                                  ),
                                  value: anotacion,
                                );
                              }).toList(),
                              onChanged: (value) {
                                Text('$value');
                              },
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(15)),
                        const Text('Observaciones',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        const Padding(padding: EdgeInsets.all(7)),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Observaciones'),
                        ),
                        const Padding(padding: EdgeInsets.all(15)),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LibrosHomePage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            child: const Text(
                              'Continuar',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
