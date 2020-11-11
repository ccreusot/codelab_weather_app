import 'package:codelab_weather_app/domain/models/city.dart';

abstract class WatchedCitiesRepository {
  Future<void> addCity(City city);
  Future<List<City>> loadCities();
}
