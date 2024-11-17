import 'dart:convert';

import 'package:icar_app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static const baseURL = 'https://api.openweathermap.org/data/2.5/weather';
  final String apiKey;

  WeatherService({required this.apiKey});

  Future<WeatherModel> getWeather(String cityName) async {
    final url = '$baseURL?q=$cityName&appid=$apiKey&units=metric';
    final response = await http.get(Uri.parse(url));

    // // TODO: Remove this line after demonstration
    // await Future.delayed(Duration(seconds: 5));

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
