import 'package:flutter/material.dart';
import 'package:test_f/componant/appconsetant.dart';
import 'package:test_f/Frist_Screen/task1.dart';
import 'package:test_f/Frist_Screen/task2.dart';

import 'Frist_Screen/BMI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: APP(),
    );
  }
}




