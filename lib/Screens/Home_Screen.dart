import 'package:flutter/material.dart';
import 'package:weatherapp/Models/W_Models.dart';
import 'package:weatherapp/Widgets/List_view.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
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
                    Text(
                      "Murree",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 37,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "21°",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 2,
                      height: 19,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Partly Cloudy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    width: 335,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20)),
                            Text(
                              "10-DAY  FORECAST",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                          ],
                        ),
                        List_Widget(
                          fillPercentage: 0.6,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
