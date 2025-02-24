import 'package:flutter/material.dart';

class Screen_Five extends StatefulWidget {
  const Screen_Five({super.key});

  @override
  State<Screen_Five> createState() => _Screen_FiveState();
}

class _Screen_FiveState extends State<Screen_Five> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Five")),
      body: Center(child: Text("This is Screen Five")),
    );
  }
}
