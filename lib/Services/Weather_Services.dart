import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherapp/Models/W_Models.dart';

class WeatherServices {
  final String apikey = "520320dacb9053c4cc660f5115cb5693";

  Future<W_Models> fetchWeather(String cityName) async {
    final url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apikey");

    final responce = await http.get(url);
    //print("API Response: ${responce.body}");

    if (responce.statusCode == 200) {
      return W_Models.fromJson(jsonDecode(responce.body));
    } else {
      throw Exception("Error Fetching Weather Data");
    }
  }
}
