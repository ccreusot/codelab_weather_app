import 'package:complete_weather_app/weather/models/weather.dart';
import 'package:complete_weather_app/weather/repositories/weather_repository.dart';

class FetchWeatherFromCity {
  final WeatherRepository _repository;

  const FetchWeatherFromCity(WeatherRepository repository) : _repository = repository;

  Future<WeatherStatus> call(String city) async {
    return await _repository.getFromCity(city);
  }
}
