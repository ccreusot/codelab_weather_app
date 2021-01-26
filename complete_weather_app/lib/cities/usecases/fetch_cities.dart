import 'package:complete_weather_app/cities/models/city.dart';
import 'package:complete_weather_app/cities/repositories/cities_repository.dart';

class FetchCities {
  final CitiesRepository _repository;

  FetchCities(CitiesRepository repository) : _repository = repository;

  Future<CitiesStatus> call() async {
    return await _repository.getCities();
  }
}
