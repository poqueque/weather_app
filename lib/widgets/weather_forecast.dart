import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/meteo_data.dart';
import 'weather_icon.dart';

class WeatherForecast extends StatelessWidget {
  final DateTime init;
  final Dataseries dataSeries;

  const WeatherForecast({Key? key, required this.init, required this.dataSeries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = init.add(Duration(hours: dataSeries.timepoint));
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Dia ${DateFormat("dd\nHH:mm").format(dateTime)}",
          style: const TextStyle(color: Colors.black54, fontSize: 24),
        ),
        WeatherIcon(data: dataSeries),
        Text(
          "${dataSeries.temp2m} ºC",
          style: const TextStyle(color: Colors.black54, fontSize: 40),
        )
      ],

    );
  }
}
