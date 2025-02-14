import 'package:flutter/material.dart';
import 'package:weatherapp/Models/W_Models.dart';
import 'package:weatherapp/Services/Weather_Services.dart';
import 'package:weatherapp/Widgets/CardContainer.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  W_Models? w_models;
  final WeatherServices _weatherServices = WeatherServices();
  final TextEditingController _countrynameController = TextEditingController();
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    fetchWeatherData();
  }

  Future<void> fetchWeatherData() async {
    try {
      final fetchedWeatherData = await _weatherServices.fetchWeather("murree");
      setState(() {
        w_models = fetchedWeatherData;
        isLoading = false;
      });
    } catch (e) {
      print("Error Fetching Weather Data: $e");
    }
  }

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
                TextField(
                  controller: _countrynameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: "Enter City Name",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_countrynameController.text.isNotEmpty) {
                      setState(() {
                        isLoading = true;
                      });
                      _weatherServices
                          .fetchWeather(_countrynameController.text)
                          .then((value) {
                        setState(() {
                          w_models = value;
                          isLoading = false;
                        });
                      });
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  child: Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                if (isLoading)
                  CircularProgressIndicator()
                else
                  SizedBox(
                    height: 20,
                  ),
                Text(
                  w_models?.countryname != null
                      ? w_models!.countryname
                      : "Loading...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                  ),
                ),
                Text(
                  w_models != null
                      ? "${w_models!.temperature.toStringAsFixed(0)}°C"
                      : "Loading...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                Text(
                  w_models != null
                      ? "WindSpeed: ${w_models!.windSpeed} m/s"
                      : "Loading...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  w_models != null
                      ? "Humidity: ${w_models!.humidity}%"
                      : "Loading...",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card_Container(
                  countryname: w_models?.countryname ?? "Loading...",
                  temperature: w_models?.temperature ?? 0,
                  description: w_models?.description ?? "Loading...",
                  humidity: w_models?.humidity ?? 0,
                  sunrise: w_models?.sunrise ?? 0,
                  windSpeed: w_models?.windSpeed ?? 0,
                  sunset: w_models?.sunset ?? 0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
