import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_con.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
        home: Scaffold(
          // body: GradientContainer(colors: [Colors.deepOrange,Colors.lightGreenAccent],)
          body: GradientContainer(Colors.deepOrange, Colors.amberAccent),
          // body: GradientContainer.purple(),
        ),
    );
  }
}

