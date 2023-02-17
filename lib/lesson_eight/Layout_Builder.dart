import 'package:flutter/material.dart';

class LayoutBuilderApp extends StatelessWidget {
  const LayoutBuilderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('layout builder'),),
      body: LayoutBuilder(
          builder: (context,BoxConstraints constraints){
            if(constraints.maxWidth>600){
              return _buildContainers();
            }else{
              return _buildNormalContainers();
            }
          }),
    );
  }
}

Widget _buildContainers(){
  return Container(
    height: 100,
    width: 100,
    color: Colors.red,
  );
}

Widget _buildNormalContainers(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
      Container(
        height: 100.0,
        width: 100.0,
        color: Colors.yellow,
      ),
    ],
  );
}