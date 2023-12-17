import 'package:app_solvertic/models/teacherNotasHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotasHomePage extends StatefulWidget {
  @override
  _NotasHomePageState createState() => _NotasHomePageState();
}

class _NotasHomePageState extends State<NotasHomePage> {
  TextEditingController ser1Controller = TextEditingController();
  TextEditingController ser2Controller = TextEditingController();
  TextEditingController saber1Controller = TextEditingController();
  TextEditingController saber2Controller = TextEditingController();
  TextEditingController hacer1Controller = TextEditingController();
  TextEditingController hacer2Controller = TextEditingController();
  TextEditingController decidir1Controller = TextEditingController();
  TextEditingController decidir2Controller = TextEditingController();
  TextEditingController autoSerController = TextEditingController();
  TextEditingController autoDecidirController = TextEditingController();
  double valor1 = 0.0;
  double valor2 = 0.0;
  double valor3 = 0.0;
  double valor4 = 0.0;
  double valor5 = 0.0;
  double valor6 = 0.0;
  double valor7 = 0.0;
  double valor8 = 0.0;
  double valor9 = 0.0;
  double valor10 = 0.0;

  @override
  Widget build(BuildContext context) {
    double promedioSer = ((valor1 + valor2) / 2).ceilToDouble();
    double promedioSaber = ((valor3 + valor4) / 2).ceilToDouble();
    double promedioHacer = ((valor5 + valor6) / 2).ceilToDouble();
    double promedioDecidir = ((valor7 + valor8) / 2).ceilToDouble();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => TeacherNotasHomePage(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 120,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/Circle.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Title(
                          color: Colors.black,
                          child: const Text(
                            'Lista de Notas Estudiante',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(30)),
              //Notas Ser
              Row(
                children: [
                  const Text(
                    'Ser: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: ser1Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 10.0) {
                          setState(() {
                            valor1 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Ser 1',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: ser2Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 10.0) {
                          setState(() {
                            valor2 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Ser 2',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Promedio: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('$promedioSer',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300))
                ],
              ),
              const Padding(padding: EdgeInsets.all(30)),
              //Notas Saber
              Row(
                children: [
                  const Text(
                    'Saber: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: saber1Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 35.0) {
                          setState(() {
                            valor3 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Saber 1',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: saber2Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 35.0) {
                          setState(() {
                            valor4 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Saber 2',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Promedio: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$promedioSaber',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ],
              ),

              const Padding(padding: EdgeInsets.all(30)),
              //Notas Hacer
              Row(
                children: [
                  const Text(
                    'Hacer: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: hacer1Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 35.0) {
                          setState(() {
                            valor5 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Hacer 1',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: hacer2Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 35.0) {
                          setState(() {
                            valor6 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Hacer 2',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Promedio: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('$promedioHacer',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300))
                ],
              ),
              const Padding(padding: EdgeInsets.all(30)),
              //Notas Decidir
              Row(
                children: [
                  const Text(
                    'Decidir: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: decidir1Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 35.0) {
                          setState(() {
                            valor7 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Decidir 1',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: decidir2Controller,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 10.0) {
                          setState(() {
                            valor8 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d{0,2}(\.\d{0,1})?$'),
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Decidir 2',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Promedio: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('$promedioDecidir',
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w300))
                ],
              ),
              const Padding(padding: EdgeInsets.all(30)),
              //Notas AutoSer
              Row(
                children: [
                  const Text(
                    'Auto Ser: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: autoSerController,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 5.0) {
                          setState(() {
                            valor9 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(
                              r'^\d{0,1}(\.\d{0,1})?$'), // Ajusta la expresión regular
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Auto Ser',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Promedio: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${(valor9)}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
//Notas Auto Decidir
              const Padding(padding: EdgeInsets.all(30)),
              Row(
                children: [
                  const Text(
                    'Auto Decidir: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 70,
                    child: TextField(
                      controller: autoDecidirController,
                      style: const TextStyle(fontSize: 14),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        double parsedValue = double.tryParse(value) ?? 0.0;
                        if (parsedValue >= 0.0 && parsedValue <= 5.0) {
                          setState(() {
                            valor10 = parsedValue;
                          });
                        }
                      },
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(
                              r'^\d{0,1}(\.\d{0,1})?$'), // Ajusta la expresión regular
                        ),
                      ],
                      decoration: InputDecoration(
                        hintText: 'Auto Decidir',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Promedio: ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${(valor10)}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(30)),
              Row(
                children: [
                  const Text(
                    'Total: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${(promedioSer + promedioSaber + promedioHacer + promedioDecidir + valor9 + valor10)}',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
