import 'package:flutter/material.dart';

class OrientationBuilderApp extends StatelessWidget {
  const OrientationBuilderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Orientation builder'),),
      body: OrientationBuilder(
          builder: (context, orientation){
            if(orientation == Orientation.portrait){
              return portraitMood();
            }else{
              return landScapeMood();
            }
          }),
    );
  }
}

Widget portraitMood(){
  return Container(color: Colors.amber,);
}

Widget landScapeMood(){
  return Container(color: Colors.cyan,);
}