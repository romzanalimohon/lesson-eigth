import 'package:flutter/material.dart';
import 'package:lesson_eight/lesson_eight/Aspect_Ratio.dart';
import 'package:lesson_eight/lesson_eight/ConstrainedBox.dart';
import 'package:lesson_eight/lesson_eight/Draggable.dart';
import 'package:lesson_eight/lesson_eight/Index_Stack.dart';
import 'package:lesson_eight/lesson_eight/Layout_Builder.dart';
import 'package:lesson_eight/lesson_eight/Orientation_Builder.dart';
import 'package:lesson_eight/lesson_eight/Positioned.dart';
import 'package:lesson_eight/lesson_eight/SIlverList.dart';
import 'package:lesson_eight/lesson_eight/TimePicker.dart';
import 'package:lesson_eight/lesson_eight/fittedBox.dart';
import 'package:lesson_eight/lesson_eight/flowWidget/home.dart';
import 'package:lesson_eight/lesson_eight/listViewBuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ListViewBuilderApp(),
      //home: LayoutBuilderApp(),
      //home: IndexStackApp(),
      //home: AspectRatioApp(),
      //home: ConstrainedBoxApp(),
      //home: PositionedApp(),
      //home: DraggableApp(),
      //home: SilverListApp(),
      //home: FittedBoxApp(),
      home: TimePickerApp(),
      //home: FlowMenuApp(),
      //home: OrientationBuilderApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
