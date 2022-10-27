
import 'package:flutter/material.dart';
import 'package:weather_app/services/weather_service.dart';

import '../models/meteo_data.dart';
import '../widgets/weather_forecast.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final service = WeatherService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: service.fetchWeatherData(),
          builder: (context, snapshot) {
            if (snapshot.hasData){
              if (snapshot.data != null){
                MeteoData meteo = snapshot.data!;
                return ListView(
                  children: [
                    for (Dataseries data in meteo.dataseries)
                      WeatherForecast(init: meteo.initDateTime, dataSeries: data),
                  ]
                );
              } else {
                return const Text("Data loaded is null");
              }
            } else if (snapshot.hasError) {
              return Text ("Error connecting backend: ${snapshot.error.toString()}");
            } else {
              return const CircularProgressIndicator();
            }
          }
        ),
      ),
    );
  }
}