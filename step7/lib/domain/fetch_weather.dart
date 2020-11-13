import 'package:codelab_weather_app/domain/fetch_weather_from_city.dart';
import 'package:codelab_weather_app/domain/fetch_weather_from_location.dart';
import 'package:codelab_weather_app/domain/models/fetch_weather_option.dart';
import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';

class FetchWeather {
  final FetchWeatherFromLocation _locationUseCase;
  final FetchWeatherFromCity _cityUseCase;

  const FetchWeather(FetchWeatherFromLocation locationUseCase,
      FetchWeatherFromCity cityUseCase)
      : _locationUseCase = locationUseCase,
        _cityUseCase = cityUseCase;

  Future<Weather> call(FetchWeatherOption option) async {
    return await option.when(aroundMe: (location) async {
      final result = await this._locationUseCase(location);
      if (result is WeatherSuccess) {
        return result.weather;
      }
      return null;
    }, inCity: (city) async {
      final result = await this._cityUseCase(city);
      if (result is WeatherSuccess) {
        return result.weather;
      }
      return null;
    });
  }
}
