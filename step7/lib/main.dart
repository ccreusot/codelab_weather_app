import 'package:codelab_weather_app/cities/repositories/cities_repository.dart';
import 'package:codelab_weather_app/weather/repositories/location_repository.dart';
import 'package:codelab_weather_app/cities/repositories/watched_cities_repository.dart';
import 'package:codelab_weather_app/weather/repositories/weather_repository.dart';
import 'package:codelab_weather_app/local/repositories/local_watched_cities_repository.dart';
import 'package:codelab_weather_app/local/repositories/location_repository.dart';
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:codelab_weather_app/network/repositories/network_cities_repository.dart';
import 'package:codelab_weather_app/network/repositories/network_weather_repository.dart';
import 'package:codelab_weather_app/weather/viewmodels/weather_page_viewmodel.dart';
import 'package:codelab_weather_app/cities/viewmodels/cities_page_viewmodel.dart';
import 'package:codelab_weather_app/weather/weather_page.dart';
import 'package:codelab_weather_app/cities/cities_page.dart';
import 'package:codelab_weather_app/weather/usecases/fetch_weather.dart';
import 'package:codelab_weather_app/weather/usecases/fetch_location.dart';
import 'package:codelab_weather_app/weather/usecases/fetch_weather_from_city.dart';
import 'package:codelab_weather_app/weather/usecases/fetch_weather_from_location.dart';
import 'package:codelab_weather_app/cities/usecases/load_watched_cities.dart';
import 'package:codelab_weather_app/cities/usecases/add_city_to_watch.dart';
import 'package:codelab_weather_app/cities/usecases/fetch_cities.dart';
import 'package:codelab_weather_app/cities/usecases/search_cities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Jiffy.locale("fr");
  runApp(MultiProvider(
    providers: [
      Provider<NetworkService>(
        create: (_) => NetworkService.create(),
      ),
      Provider<WeatherRepository>(
        create: (context) => NetworkWeatherRepository(Provider.of<NetworkService>(context, listen: false)),
      ),
      Provider<CitiesRepository>(
        create: (context) => NetworkCitiesRepository(Provider.of<NetworkService>(context, listen: false)),
      ),
      Provider<WatchedCitiesRepository>(create: (_) => LocalWatchedCitiesRepository()),
      Provider<LocationRepository>(
        create: (_) => LocalLocationRepository(),
      ),
      ChangeNotifierProvider<WeatherPageViewModel>(
        create: (context) => WeatherPageViewModel(
            FetchWeather(
              FetchLocation(Provider.of<LocationRepository>(context, listen: false)),
              FetchWeatherFromLocation(Provider.of<WeatherRepository>(context, listen: false)),
              FetchWeatherFromCity(Provider.of<WeatherRepository>(context, listen: false)),
            ),
            LoadWatchedCities(Provider.of<WatchedCitiesRepository>(context, listen: false))),
      ),
      ChangeNotifierProvider<CitiesPageViewModel>(
        create: (context) => CitiesPageViewModel(FetchCities(Provider.of<CitiesRepository>(context, listen: false)),
            SearchCities(), AddCityToWatch(Provider.of<WatchedCitiesRepository>(context, listen: false))),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => WeatherPage(),
        '/add': (context) => CitiesPage(),
      },
    );
  }
}
