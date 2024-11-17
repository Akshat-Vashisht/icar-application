import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icar_app/models/weather_model.dart';
import 'package:icar_app/services/weather_service.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  bool _isLoading = true;
  final _weatherService =
      WeatherService(apiKey: dotenv.get("API_KEY", fallback: " "));
  WeatherModel? _weather;

  _fetchWeather() async {
    try {
      final weather = await _weatherService.getWeather("Pune");
      setState(() {
        _weather = weather;
        _isLoading = false;
      });
    } catch (e) {
      _isLoading = false;
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(20),
      ),
      child: _isLoading
          ? Center(
              child: LoadingAnimationWidget.staggeredDotsWave(
                color: Colors.white,
                size: 40,
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${_weather?.temperature}° C',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          _weather!.weatherCondition
                              .split(' ')
                              .map((word) =>
                                  word[0].toUpperCase() + word.substring(1))
                              .join(' '),
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: _weather != null
                        ? Image.network(
                            'https://openweathermap.org/img/wn/${_weather!.icon}@2x.png',
                            height: 100,
                          )
                        : Text('Something went wrong'),
                  )
                ],
              ),
            ),
    );
  }
}
