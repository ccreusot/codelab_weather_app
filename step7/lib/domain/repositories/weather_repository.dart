import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';

abstract class WeatherRepository {
  Future<WeatherStatus> getFromLocation(Location location);
  Future<WeatherStatus> getFromCity(String city);
}
