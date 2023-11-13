import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //api Key
  final _weatherService = WeatherService('apiKey');
  //fetch Weather

  //animations
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
