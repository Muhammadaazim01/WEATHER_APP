import 'package:flutter/material.dart';
import 'package:weatherapp/Screens/Screen_Five.dart';
import 'package:weatherapp/Widgets/gridWidget.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/Weather_1 (1).png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 335,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Icon(
                            Icons.thermostat,
                            color: Colors.grey,
                          ),
                          Text(
                            "TEMPERATURE",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen_Five()));
                            },
                            child: Icon(
                              Icons.forward,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Grid_Widget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
