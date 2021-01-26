import 'package:complete_weather_app/cities/models/city.dart';

abstract class WatchedCitiesRepository {
  Future<void> addCity(City city);
  Future<List<City>> loadCities();
}
