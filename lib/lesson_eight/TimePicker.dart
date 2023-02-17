import 'package:flutter/material.dart';

class TimePickerApp extends StatefulWidget {
  const TimePickerApp({Key? key}) : super(key: key);

  @override
  State<TimePickerApp> createState() => _TimePickerAppState();
}

class _TimePickerAppState extends State<TimePickerApp> {

  //TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  TimeOfDay _timeOfDay = TimeOfDay.now();

  void _showTimePicker(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()).then((value){
          setState((){
            _timeOfDay = value!;
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _showTimePicker,
              child: Text('pick time'.toUpperCase(),
              style: TextStyle(fontSize: 50),
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
