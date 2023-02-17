import 'package:flutter/material.dart';

class DraggableApp extends StatefulWidget {
  const DraggableApp({Key? key}) : super(key: key);

  @override
  State<DraggableApp> createState() => _DraggableAppState();
}

class _DraggableAppState extends State<DraggableApp> {
  int acceptData = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(height: 100,)
            ],
          ),
          Draggable<int>(
              data: 10,
              feedback: Container(
                color: Colors.deepOrange,
                height: 100,
                width: 100,
                child: Icon(Icons.directions),
              ),
            childWhenDragging: Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
              child: Center(child: Text('Draggable'),),
            ),
            child: Container(
              height: 100,
              width: 100,
              color:Colors.lightGreenAccent,
              child: Center(child: Text('Draggable'),),
            ),
          ),
          DragTarget<int>(
              builder: (BuildContext context, List<dynamic> accepted, List<dynamic> rejected){
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                  child: Center(child: Text('value is updated : $acceptData'),),
                );
              },
            onAccept: (int data){
                setState((){
                  acceptData += data;
                });
            },
          ),
        ],
      ),
    );
  }
}
