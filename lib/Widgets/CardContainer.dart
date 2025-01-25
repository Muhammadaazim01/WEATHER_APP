import 'package:flutter/material.dart';

class Card_Container extends StatelessWidget {
  const Card_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              "Cloudy conditions from 1AM-9AM, with showers expected at 9AM.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            Row(
              children: [
                Container(
                  height: 1,
                  width: 310,
                  color: Colors.white.withOpacity(0.5),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "10PM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "11PM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "12AM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "1AM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/1.png",
                      width: 30,
                      height: 26,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Image.asset(
                      "assets/images/2.png",
                      width: 30,
                      height: 26,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Image.asset(
                      "assets/images/3.png",
                      width: 30,
                      height: 26,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Image.asset(
                      "assets/images/4.png",
                      width: 30,
                      height: 26,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Image.asset(
                      "assets/images/5.png",
                      width: 30,
                      height: 26,
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Row(
                  children: [
                    Text(
                      "21°",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "21°",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "19°",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Text(
                      "19°",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      "19°",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
