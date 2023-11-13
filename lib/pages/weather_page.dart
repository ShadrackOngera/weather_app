import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //api Key

  final _weatherService = WeatherService('apiKey');
  Weather? _weather;

  //fetch Weather
  _fetchWeather() async {
    //get current city

    String cityName = await _weatherService.getCurrentCity();

    //get weather for city

    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    } catch (e) {
      print(e);
    }
  }

  //animations
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero, _fetchWeather);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold();
  }
}
