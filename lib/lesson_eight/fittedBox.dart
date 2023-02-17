import 'package:flutter/material.dart';

class FittedBoxApp extends StatelessWidget {
  const FittedBoxApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20),
        height: 400,
        width: 300,
        color: Colors.red,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        ),
      ),
    );
  }
}
