import 'package:flutter/material.dart';
import 'package:weatherapp/Models/W_Models.dart';
import 'package:weatherapp/Screens/Screen_Two.dart';
import 'package:weatherapp/Services/Weather_Services.dart';

class Card_Container extends StatefulWidget {
  final String countryname;
  final double temperature;
  final String description;
  final int humidity;
  final double windSpeed;
  final int sunrise;
  final int sunset;

  const Card_Container({
    super.key,
    required this.countryname,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.windSpeed,
    required this.sunrise,
    required this.sunset,
  });

  @override
  State<Card_Container> createState() => _Card_ContainerState();
}

class _Card_ContainerState extends State<Card_Container> {
  List<Map<String, dynamic>> days = [
    {
      "day": "Now",
      "image": "assets/images/1.png",
      "degree": "31°",
    },
    {
      "day": "10Pm",
      "image": "assets/images/1.png",
      "degree": "14°",
    },
    {
      "day": "11Pm",
      "image": "assets/images/1.png",
      "degree": "20°",
    },
    {
      "day": "12Am",
      "image": "assets/images/1.png",
      "degree": "30°",
    },
    {
      "day": "1Am",
      "image": "assets/images/1.png",
      "degree": "41°",
    },
    {
      "day": "2Am",
      "image": "assets/images/1.png",
      "degree": "20°",
    },
    {
      "day": "3Am",
      "image": "assets/images/1.png",
      "degree": "22°",
    },
  ];
  late Future<W_Models> w_models;
  final WeatherServices _weatherServices = WeatherServices();

  @override
  void initState() {
    super.initState();
    w_models = _weatherServices.fetchWeather(widget.countryname);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.1),
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
            Container(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          days[index]["day"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset(
                            days[index]["image"],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          days[index]["degree"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 1,
              width: 310,
              color: Colors.white.withOpacity(0.5),
            ),
            SizedBox(
              height: 8,
            ),
            Row(children: [
              Text(
                "More Weather",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 150,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen_Two()));
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
