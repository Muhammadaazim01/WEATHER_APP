import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/Models/W_Models.dart';
import 'package:weatherapp/Screens/Screen_4.dart';
import 'package:weatherapp/Screens/Screen_Three.dart';
import 'package:weatherapp/Screens/Screen_Two.dart';
import 'package:weatherapp/Screens/Screen_Five.dart';
import 'package:weatherapp/Services/Weather_Services.dart';
import 'package:weatherapp/Widgets/CardContainer.dart';

class Screen_One extends StatefulWidget {
  const Screen_One({super.key});

  @override
  State<Screen_One> createState() => _Screen_OneState();
}

class _Screen_OneState extends State<Screen_One> {
  final List<Widget> _screens = [
    Screen_Two(),
    Screen3(),
    Screen4(), // Replace with Account Screen
    Screen_Five(), // Replace with Settings Screen
  ];
  int _selectedIndex = 0;
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
      final fetchedWeatherData = await _weatherServices.fetchWeather("Karachi");

      setState(() {
        w_models = fetchedWeatherData;
        isLoading = false;
      });
    } catch (e) {
      print("Error Fetching Weather Data: $e");
    }
  }

  void _onItemTapped(int index) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _screens[index],
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1.0, 0.0);
          var end = Offset.zero;
          var curve = Curves.easeInOut;
          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
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
                    focusColor: Colors.white,
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
      bottomNavigationBar: BottomBar(
        backgroundColor: Color.fromARGB(255, 15, 25, 42),
        textStyle: TextStyle(fontWeight: FontWeight.bold),
        selectedIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          _onItemTapped(index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorites'),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
            activeColor: Colors.greenAccent.shade700,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}
