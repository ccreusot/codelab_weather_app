import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class WeatherConditionByHour extends StatelessWidget {
  const WeatherConditionByHour({
    Key key,
    @required this.entry,
  }) : super(key: key);

  final HourlyForecast entry;

  @override
  Widget build(BuildContext context) {
    final currentHour = DateTime.now().hour;
    final entryHour = entry.hour;
    return Card(
      color: currentHour == entryHour.hour ? Colors.blue : Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                Jiffy(entryHour).Hm,
                style: TextStyle(
                  fontSize: 9,
                  color: currentHour == entryHour.hour
                      ? Colors.white
                      : Colors.black45,
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Image.network(
                  entry.icon,
                  width: 18,
                )),
            Expanded(
              flex: 1,
              child: Text(
                "${entry.temperature}°",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: currentHour == entryHour.hour
                        ? Colors.white
                        : Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}
