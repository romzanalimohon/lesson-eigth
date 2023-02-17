import 'package:flutter/material.dart';

class AspectRatioApp extends StatelessWidget {
  const AspectRatioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        width: double.infinity,
        height: 200,
        child: AspectRatio(
          aspectRatio: 5/1,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
