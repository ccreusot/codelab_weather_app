import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/repositories/cities_repository.dart';

class FetchCities {
  final CitiesRepository _repository;

  FetchCities(CitiesRepository repository) : _repository = repository;

  Future<CitiesStatus> call() async {
    return await _repository.getCities();
  }
}
