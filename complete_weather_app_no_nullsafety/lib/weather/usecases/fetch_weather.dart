import 'package:codelab_weather_app/weather/usecases/fetch_location.dart';
import 'package:codelab_weather_app/weather/usecases/fetch_weather_from_city.dart';
import 'package:codelab_weather_app/weather/usecases/fetch_weather_from_location.dart';
import 'package:codelab_weather_app/weather/models/fetch_weather_option.dart';
import 'package:codelab_weather_app/weather/models/weather.dart';

class FetchWeather {
  final FetchLocation _fetchLocationUseCase;
  final FetchWeatherFromLocation _locationUseCase;
  final FetchWeatherFromCity _cityUseCase;

  const FetchWeather(
      FetchLocation fetchLocationUseCase, FetchWeatherFromLocation locationUseCase, FetchWeatherFromCity cityUseCase)
      : _fetchLocationUseCase = fetchLocationUseCase,
        _locationUseCase = locationUseCase,
        _cityUseCase = cityUseCase;

  Future<Weather> call(FetchWeatherOption option) async {
    return await option.when(aroundMe: () async {
      final locationResult = await _fetchLocationUseCase();
      return await locationResult.when(success: (location) async {
        final result = await this._locationUseCase(location);
        if (result is WeatherSuccess) {
          return result.weather;
        }
        return null;
      }, error: (_) {
        return null;
      });
    }, inCity: (city) async {
      final result = await this._cityUseCase(city);
      if (result is WeatherSuccess) {
        return result.weather;
      }
      return null;
    });
  }
}
