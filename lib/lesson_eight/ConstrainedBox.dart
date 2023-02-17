import 'package:flutter/material.dart';

class ConstrainedBoxApp extends StatelessWidget {
  const ConstrainedBoxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        padding: EdgeInsets.only(top: 60, left: 100),
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(),
          child: Card(
            child: Text('hello chuntaro'),
          ),
        ),
      ),
    );
  }
}
