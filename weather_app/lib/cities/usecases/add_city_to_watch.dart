import 'package:codelab_weather_app/cities/models/city.dart';
import 'package:codelab_weather_app/cities/repositories/watched_cities_repository.dart';

class AddCityToWatch {
  final WatchedCitiesRepository _repository;

  const AddCityToWatch(WatchedCitiesRepository repository) : _repository = repository;

  Future<void> call(City city) async {
    if (city == null) return;
    await _repository.addCity(city);
  }
}
