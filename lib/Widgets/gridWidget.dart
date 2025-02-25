import 'package:flutter/material.dart';

class Grid_Widget extends StatefulWidget {
  const Grid_Widget({super.key});

  @override
  State<Grid_Widget> createState() => _Grid_WidgetState();
}

class _Grid_WidgetState extends State<Grid_Widget> {
  List<Map<String, dynamic>> gridItems = [
    {
      "title": "UV INDEX",
      "icon": Icons.sunny,
      "value": "0",
      "status": "Low",
      "description": "Low for the rest of the day.",
      "isWhiteLine": false,
    },
    {
      "title": "SUNRISE",
      "icon": Icons.sunny_snowing,
      "value": "6:28AM",
      "status": "Moderate",
      "description": "Sunset: 6:10PM",
      "isWhiteLine": true,
    },
    {
      "title": "WIND",
      "icon": Icons.air,
      "value": "73%",
      "status": "High",
      "description": "High for the rest of the day.",
      "isWhiteLine": false,
    },
    {
      "title": "RAINFALL",
      "icon": Icons.water_drop,
      "value": "50%",
      "status": "Medium",
      "description": "Medium for the rest of the day.",
      "isWhiteLine": true,
    },
    {
      "title": "FEELS LIKE",
      "icon": Icons.thermostat,
      "value": "80%",
      "status": "HEAT",
      "description": "Similar to the actual temperature",
      "isWhiteLine": false,
    },
    {
      "title": "WINTER",
      "icon": Icons.wind_power_rounded,
      "value": "16%",
      "status": "Good Feel",
      "description": "The dew point is 16° right now.",
      "isWhiteLine": true,
    },
    {
      "title": "UV INDEX",
      "icon": Icons.sunny,
      "value": "0",
      "status": "Low",
      "description": "Low for the rest of the day.",
      "isWhiteLine": false,
    },
    {
      "title": "SUNRISE",
      "icon": Icons.sunny_snowing,
      "value": "6:28AM",
      "status": "Moderate",
      "description": "Sunset: 6:10PM",
      "isWhiteLine": true,
    },
    {
      "title": "WIND",
      "icon": Icons.air,
      "value": "73%",
      "status": "High",
      "description": "High for the rest of the day.",
      "isWhiteLine": false,
    },
    {
      "title": "RAINFALL",
      "icon": Icons.water_drop,
      "value": "50%",
      "status": "Medium",
      "description": "Medium for the rest of the day.",
      "isWhiteLine": true,
    },
    {
      "title": "FEELS LIKE",
      "icon": Icons.thermostat,
      "value": "80%",
      "status": "HEAT",
      "description": "Similar to the actual temperature",
      "isWhiteLine": false,
    },
    {
      "title": "WINTER",
      "icon": Icons.wind_power_rounded,
      "value": "16%",
      "status": "Good Feel",
      "description": "The dew point is 16° right now.",
      "isWhiteLine": true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: gridItems.length,
      itemBuilder: (context, index) {
        var item = gridItems[index];
        return Container(
          height: 162,
          width: 165,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      item["icon"],
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    item["title"],
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
                    item["value"],
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
                    item["status"],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Container(
                height: 4,
                width: 160,
                decoration: BoxDecoration(
                  gradient: item["isWhiteLine"]
                      ? null
                      : LinearGradient(
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
                  color: item["isWhiteLine"] ? Colors.white : null,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        item["description"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
