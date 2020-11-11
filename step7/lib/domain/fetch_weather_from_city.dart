import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:codelab_weather_app/domain/repositories/weather_repository.dart';

class FetchWeatherFromCity {
  final WeatherRepository _repository;

  const FetchWeatherFromCity(WeatherRepository repository)
      : _repository = repository;

  Future<WeatherStatus> call(String city) async {
    return await _repository.getFromCity(city);
  }
}
