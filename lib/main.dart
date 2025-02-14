import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash_Screen(),
    );
  }
}
