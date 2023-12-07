import 'package:app_solvertic/models/cursosHomePage.dart';
import 'package:app_solvertic/models/librosHomePage.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [showDatePicker].

void main() => runApp(const SelectionInfo());

class SelectionInfo extends StatelessWidget {
  const SelectionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      restorationScopeId: 'app',
      home: const DatePickerExample(restorationId: 'main'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key, this.restorationId});

  final String? restorationId;

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

/// RestorationProperty objects can be used because of RestorationMixin.
class _DatePickerExampleState extends State<DatePickerExample>
    with RestorationMixin {
  // In this example, the restoration ID for the mixin is passed in through
  // the [StatefulWidget]'s constructor.
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate = RestorableDateTime(DateTime.now());
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @pragma('vm:entry-point')
  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.now(),
          firstDate: DateTime(2023),
          lastDate: DateTime(2024),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  RestorableDateTime _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Seleccionó: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
    return _selectedDate;
  }

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
                builder: (context) => CursosHomePage(),
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
                        Row(
                          children: <Widget>[
                            const Text('Seleccione la Fecha',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            const Padding(padding: EdgeInsets.all(5)),
                            OutlinedButton(
                              onPressed: () {
                                _restorableDatePickerRouteFuture.present();
                              },
                              child: const Text('Seleccione la Fecha'),
                            ),
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
                            SelectableText.rich(TextSpan(
                                text:
                                    '${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year} ',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.all(15)),
                        const TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Nombre del Estudiante'),
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
