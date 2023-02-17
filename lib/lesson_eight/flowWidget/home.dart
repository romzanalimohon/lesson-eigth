import 'package:flutter/material.dart';
import 'package:lesson_eight/lesson_eight/flowWidget/flow.dart';

class FlowMenuApp extends StatelessWidget {
  const FlowMenuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flow example'),),
      body: Stack(
          children: [
          FlowMenu()
          ],
      )
    );
  }
}
