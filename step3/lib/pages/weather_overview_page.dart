import 'dart:ui';

import 'package:codelab_weather_app/models/weather.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class WeatherOverviewPage extends StatelessWidget {
  final Weather weather;

  const WeatherOverviewPage({Key key, @required this.weather})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Text(
              "${weather.cityInfo.name},",
              style: TextStyle(color: Colors.white),
            ),
            Text("${weather.cityInfo.country}",
            style: TextStyle(color: Colors.white70),)
          ],
        ),
      ),
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: ListView(
          children: [
            Text("Next 4 Days", style: TextStyle(color: Colors.white),),
            WeatherDayLine(weather: weather.fcstDay1),
            WeatherDayLine(weather: weather.fcstDay2),
            WeatherDayLine(weather: weather.fcstDay3),
            WeatherDayLine(weather: weather.fcstDay4)
          ],
        ),
      ),
    );
  }
}

class WeatherDayLine extends StatelessWidget {
  const WeatherDayLine({
    Key key,
    @required this.weather,
  }) : super(key: key);

  final ForecastDay weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(weather.iconBig, width: 24,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: [
                Text("${weather.dayLong}, ", style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),),
                Text(Jiffy(weather.date, "dd.MM.yyyy").MMMd, style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12
                ),),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("${weather.tmax} ", style: TextStyle(color: Colors.white, fontSize: 14),),
                Text("/ ${weather.tmin}°", style: TextStyle(color: Colors.white70, fontSize: 10),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
