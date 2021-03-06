import 'package:complete_weather_app/weather/models/location.dart';
import 'package:complete_weather_app/weather/models/weather.dart';

abstract class WeatherRepository {
  Future<WeatherStatus> getFromLocation(Location location);
  Future<WeatherStatus> getFromCity(String city);
}
