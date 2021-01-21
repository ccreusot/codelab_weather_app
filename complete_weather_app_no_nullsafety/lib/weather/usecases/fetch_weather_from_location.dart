import 'package:codelab_weather_app/weather/models/location.dart';
import 'package:codelab_weather_app/weather/models/weather.dart';
import 'package:codelab_weather_app/weather/repositories/weather_repository.dart';

class FetchWeatherFromLocation {
  final WeatherRepository _repository;

  const FetchWeatherFromLocation(WeatherRepository repository) : _repository = repository;

  Future<WeatherStatus> call(Location location) async {
    return await _repository.getFromLocation(location);
  }
}
