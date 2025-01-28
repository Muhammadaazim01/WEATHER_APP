import 'package:flutter/material.dart';
import 'package:weatherapp/Widgets/Curved_line.dart';

class Custom_Card extends StatelessWidget {
  const Custom_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 162,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Icon(
                Icons.sunny,
                color: Colors.grey,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "UV INDEX",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "0",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "Low",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          Container(
            height: 4,
            width: 140,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                  Colors.green,
                  Colors.blue,
                  Colors.indigo,
                  Colors.purple,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "Low for the rest \nof the day.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
