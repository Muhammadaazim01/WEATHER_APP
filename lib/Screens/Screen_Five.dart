import 'package:flutter/material.dart';

class Screen_Five extends StatefulWidget {
  const Screen_Five({super.key});

  @override
  State<Screen_Five> createState() => _Screen_FiveState();
}

class _Screen_FiveState extends State<Screen_Five> {
  final TextEditingController _countrynameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 40)),
            Text(
              "Weather",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 37,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          TextField(
            controller: _countrynameController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              hintText: "Search for a city or airport",
              focusColor: Colors.amber,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/list.png"),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/list (1).png"),
          Text(
            "Learn more about weather data and map data",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
