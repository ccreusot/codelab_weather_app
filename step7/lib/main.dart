import 'package:codelab_weather_app/local/repositories/local_watched_cities_repository.dart';
import 'package:codelab_weather_app/local/repositories/location_repository.dart';
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:codelab_weather_app/network/repositories/network_cities_repository.dart';
import 'package:codelab_weather_app/network/repositories/network_weather_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jiffy/jiffy.dart';

import 'pages/home_page.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Jiffy.locale("fr");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final NetworkService _service = NetworkService.create();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(
          title: "Weather",
          weatherRepository: NetworkWeatherRepository(_service),
          citiesRepository: NetworkCitiesRepository(_service),
          watchedCitiesRepository: LocalWatchedCitiesRepository(),
          locationRepository: LocalLocationRepository()),
    );
  }
}
