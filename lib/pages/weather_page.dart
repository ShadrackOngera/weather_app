import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/helpers/text_helper.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //api Key

  final _weatherService = WeatherService('f58993605f9dd877ab9a895a44207ada');
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
  String getWeatherCondition(String? mainCondition) {
    if (mainCondition == null) {
      return 'assets/lottie/cloud.json';
    }

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return "assets/lottie/cloud.json";
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return "assets/lottie/rain.json";
      case 'clear':
        return "assets/lottie/sunny.json";
      default:
        return "assets/lottie/sunny.json";
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration.zero, _fetchWeather);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextHepler.primaryText(
              text: _weather?.cityName ?? 'loading city....',
            ),
            TextHepler.primaryText(
              text: _weather?.mainCondition ?? 'loading condition....',
            ),
            Lottie.asset(
              getWeatherCondition(_weather?.mainCondition),
            ),
            TextHepler.primaryText(
              text: "${_weather?.temperature.round().toString()}°C" ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
