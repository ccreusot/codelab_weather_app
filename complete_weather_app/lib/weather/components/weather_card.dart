import 'package:complete_weather_app/weather/models/weather.dart';
import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard(this.weather);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(weather.iconUrl),
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(weather.fromGeolocation ? "Autour de moi" : weather.cityName),
                  Text(weather.condition),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${weather.temperature}°C",
                    style: TextStyle(fontSize: 32.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
