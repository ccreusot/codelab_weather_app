import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:location/location.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:codelab_weather_app/pages/weather_overview_page.dart';
import '../models/weather.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: WeatherBody(),
    );
  }
}

class WeatherBody extends StatefulWidget {
  @override
  _WeatherBodyState createState() => _WeatherBodyState();
}

class _WeatherBodyState extends State<WeatherBody> {
  Weather _weather = null;
  Iterable<MapEntry<String, HourlyData>> _currentDayEntries = null;

  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: (_weather == null)
            ? CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            left: 8, right: 16.0, bottom: 8.0),
                        alignment: Alignment.centerLeft,
                        child: (_weather.cityInfo.name == 'NA')
                            ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                    "Location",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.my_location, size: 16,),
                                )
                              ],
                            )
                            : Row(
                                children: [
                                  Text(
                                    "${_weather.cityInfo.name}, ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(_weather.cityInfo.country,
                                      style: TextStyle(color: Colors.black54))
                                ],
                              )),
                    WeatherCurrentConditionCard(weather: _weather),
                    Row(
                      children: [
                        Expanded(
                            child: Text("Today",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  child: Text("Next 4 days >",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WeatherOverviewPage(
                                                    weather: _weather)));
                                  },
                                )))
                      ],
                    ),
                    SizedBox(
                        height: 96.0,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _currentDayEntries.length,
                              itemBuilder: (BuildContext context, int index) {
                                final entry =
                                    _currentDayEntries.elementAt(index);
                                return WeatherConditionByHour(entry: entry);
                              }),
                        ))
                  ],
                ),
              ));
  }

  void fetchWeather() async {
    Location location = Location();

    var serviceEnabled = await location.serviceEnabled()
        ? true
        : await location.requestService();
    if (!serviceEnabled) return;

    var permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return;
    }

    var locationData = await location.getLocation();

    final currentHour = DateTime.now().hour;

    try {
      var client = http.Client();
      http.Response response = await client.get(
          "https://www.prevision-meteo.ch/services/json/lat=${locationData.latitude}lng=${locationData.longitude}");
      setState(() {
        _weather = Weather.fromJson(convert.jsonDecode(response.body));
        _currentDayEntries =
            _weather.fcstDay0.hourlyData.entries.where((element) {
          final hour = Jiffy(element.key.replaceAll("H", ":"), "h:mm").hour;
          return hour >= currentHour;
        });
      });
    } catch (e) {
      print(e);
    }
  }
}

class WeatherConditionByHour extends StatelessWidget {
  const WeatherConditionByHour({
    Key key,
    @required this.entry,
  }) : super(key: key);

  final MapEntry<String, HourlyData> entry;

  @override
  Widget build(BuildContext context) {
    final currentHour = DateTime.now().hour;
    final entryHour = Jiffy(entry.key.replaceAll("H", ":"), "h:mm").hour;
    return Card(
      color: currentHour == entryHour ? Colors.blue : Colors.white,
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
                entry.key,
                style: TextStyle(
                  fontSize: 9,
                  color:
                      currentHour == entryHour ? Colors.white : Colors.black45,
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Image.network(
                  entry.value.icon,
                  width: 18,
                )),
            Expanded(
              flex: 1,
              child: Text(
                "${entry.value.tMP2m.round().toString()}°",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: currentHour == entryHour
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

class WeatherCurrentConditionCard extends StatelessWidget {
  const WeatherCurrentConditionCard({
    Key key,
    @required Weather weather,
  })  : _weather = weather,
        super(key: key);

  final Weather _weather;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Card(
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Column(
            children: [
              Image.network(_weather.currentCondition.iconBig, width: 92),
              Text(
                _weather.currentCondition.condition,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              Text(
                Jiffy(_weather.currentCondition.date, "dd.MM.yyyy").MMMMEEEEd,
                style: TextStyle(color: Colors.white54, fontSize: 11),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "${_weather.currentCondition.tmp.toString()}°",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                            child: WeatherCurrentConditionSmallDetailComponent(
                          icon: WeatherIcons.strong_wind,
                          title: "Wind",
                          info: "${_weather.currentCondition.wndSpd} km/h",
                        )),
                        VerticalDivider(
                          width: 1,
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Expanded(
                            child: WeatherCurrentConditionSmallDetailComponent(
                          icon: WeatherIcons.humidity,
                          title: "Humidity",
                          info: "${_weather.currentCondition.humidity}%",
                        )),
                      ]),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child:
                                  WeatherCurrentConditionSmallDetailComponent(
                            icon: WeatherIcons.wind,
                            title: "Wind Dir",
                            info: "${_weather.currentCondition.wndDir}",
                          )),
                          VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Colors.white,
                          ),
                          Expanded(
                              child:
                                  WeatherCurrentConditionSmallDetailComponent(
                            icon: WeatherIcons.barometer,
                            title: "Pressure",
                            info: "${_weather.currentCondition.pressure} mbar",
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherCurrentConditionSmallDetailComponent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String info;

  const WeatherCurrentConditionSmallDetailComponent(
      {Key key, this.icon, this.title, this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        flex: 3,
        child: BoxedIcon(
          icon,
          size: 18,
          color: Colors.white,
        ),
      ),
      Expanded(
        flex: 7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toUpperCase(),
              style: TextStyle(color: Colors.white54, fontSize: 9),
            ),
            SizedBox(
              height: 2,
            ),
            Text(info, style: TextStyle(color: Colors.white, fontSize: 12))
          ],
        ),
      )
    ]);
  }
}
