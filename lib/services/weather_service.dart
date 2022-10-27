import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/meteo_data.dart';

class WeatherService {
  static const double latitude = 41.35967;
  static const double longitude = 2.10028;

  String weatherUrl = "https://www.7timer.info/bin/meteo.php?lon=$longitude&lat=$latitude&ac=0&unit=metric&output=json";

  Future<MeteoData> fetchWeatherData() async {
    http.Response response = await http.get(Uri.parse(weatherUrl));
    var data = json.decode(response.body);
    MeteoData meteo = MeteoData.fromJson(data);
    return meteo;
  }
}