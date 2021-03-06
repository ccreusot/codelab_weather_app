import 'package:complete_weather_app/cities/models/city.dart';
import 'package:complete_weather_app/cities/repositories/watched_cities_repository.dart';

class LoadWatchedCities {
  final WatchedCitiesRepository _repository;

  const LoadWatchedCities(WatchedCitiesRepository repository) : _repository = repository;
  Future<List<City>> call() async {
    return await _repository.loadCities();
  }
}
