import 'package:flutter/material.dart';

class ListViewBuilderApp extends StatelessWidget {

  List<String> entries = <String>['a','b','c','d'];
  List<int> colorCodes = <int>[600,500,200,300];
  int i = 1;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: colorCodes.length,
            itemBuilder: (context, int index){
              return Container(
                margin: EdgeInsets.only(top: 8),
                height: 100,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('${i++}  Entry ${entries[index]}')),
              );
            }),
      ),
    );
  }
}
