import 'package:app_solvertic/models/selectionInfo.dart';
import 'package:app_solvertic/models/teacherHomePage.dart';
import 'package:flutter/material.dart';

class CursosHomePage extends StatelessWidget {
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
                builder: (context) => TeacherHomePage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Cursos de la Materia',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Card(
                child: Row(
              children: <Widget>[
                const Text('1ero de Secundaria',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectionInfo(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_right))
              ],
            )),
            Card(
                child: Row(
              children: <Widget>[
                const Text('2do de Secundaria',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectionInfo(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_right))
              ],
            )),
            Card(
                child: Row(
              children: <Widget>[
                const Text('3ero de Secundaria',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectionInfo(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_right))
              ],
            )),
          ],
        ),
      ),
    );
  }
}
