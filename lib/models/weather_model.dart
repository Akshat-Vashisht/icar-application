class WeatherModel {
  final double temperature;
  final String weatherCondition;
  final String icon;

  WeatherModel({
    required this.temperature,
    required this.weatherCondition,
    required this.icon
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temperature: json['main']['temp'],
      weatherCondition: json['weather'][0]['description'],
      icon: json['weather'][0]['icon']
    );
  }
}
