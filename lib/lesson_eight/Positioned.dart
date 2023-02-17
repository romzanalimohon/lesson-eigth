import 'package:flutter/material.dart';

class PositionedApp extends StatelessWidget {
  const PositionedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.black,
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 10,
                  child: Icon(Icons.access_alarm, color: Colors.green,),
                ),
                Positioned(
                  top: 70,
                  left: 20,
                  child: Icon(Icons.gradient, color: Colors.green,),
                ),
                Positioned(
                  top: 90,
                  left: 30,
                  child: Icon(Icons.fire_hydrant_alt, color: Colors.green,),
                ),
                Positioned(
                  top: 115,
                  left: 40,
                  child: Icon(Icons.leaderboard, color: Colors.green,),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
