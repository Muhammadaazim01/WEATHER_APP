import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/Screen_4.dart';
import 'package:weatherapp/Widgets/Custom_Card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen4(),
    );
  }
}
