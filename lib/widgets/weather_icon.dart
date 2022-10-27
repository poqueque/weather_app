import 'package:flutter/material.dart';
import 'package:weather_app/models/meteo_data.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherIcon extends StatelessWidget {
  final Dataseries data;
  const WeatherIcon({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.precType == 'rain') return const Icon(WeatherIcons.rain, color: Colors.indigo);
    if (data.precType == 'snow') return const Icon(WeatherIcons.snow, color: Colors.grey);
    if (data.cloudcover < 3) return const Icon(WeatherIcons.day_sunny, color: Colors.amber);
    if (data.cloudcover < 6) return const Icon(WeatherIcons.day_cloudy, color: Colors.black26);
    return const Icon(WeatherIcons.day_cloudy_high, color: Colors.black54);
  }
}
