import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/repositories/watched_cities_repository.dart';

class LoadWatchedCities {
  final WatchedCitiesRepository _repository;

  const LoadWatchedCities(WatchedCitiesRepository repository)
      : _repository = repository;
  Future<List<City>> call() async {
    return await _repository.loadCities();
  }
}
