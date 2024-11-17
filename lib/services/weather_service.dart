import 'dart:convert';

import 'package:icar_app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static const baseURL = 'https://api.openweathermap.org/data/2.5/weather';
  final String apiKey;
  static WeatherModel? _cachedWeather;

  WeatherService({required this.apiKey});

  Future<WeatherModel> getWeather(String cityName) async {
    // Return cached weather data if available
    if (_cachedWeather != null) {
      // print('-------------------------------------USING CACHED DATA---------------------------------');
      return _cachedWeather!;
    }

    final url = '$baseURL?q=$cityName&appid=$apiKey&units=metric';
    final response = await http.get(Uri.parse(url));
    // print("-------------------------------------CALLING API---------------------------------");
    
    // // TODO: Remove this line after demonstration
    // await Future.delayed(Duration(seconds: 5));

    if (response.statusCode == 200) {
      _cachedWeather = WeatherModel.fromJson(jsonDecode(response.body));
      return _cachedWeather!;
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
