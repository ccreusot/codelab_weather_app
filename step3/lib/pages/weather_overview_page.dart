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
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text("Next 4 Days", style: TextStyle(color: Colors.white),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(weather.fcstDay1.iconBig, width: 24,),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      Text("${weather.fcstDay1.dayLong}, ", style: TextStyle(
                        color: Colors.white,
                        fontSize: 12
                      ),),
                      Text(Jiffy(weather.fcstDay1.date, "dd.MM.yyyy").MMMd, style: TextStyle(
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
                      Text("${weather.fcstDay1.tmax} ", style: TextStyle(color: Colors.white, fontSize: 14),),
                      Text("/ ${weather.fcstDay1.tmin}°", style: TextStyle(color: Colors.white70, fontSize: 10),)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
