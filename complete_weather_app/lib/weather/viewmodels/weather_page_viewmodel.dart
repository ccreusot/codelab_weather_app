import 'package:complete_weather_app/cities/usecases/load_watched_cities.dart';
import 'package:complete_weather_app/weather/models/fetch_weather_option.dart';
import 'package:complete_weather_app/weather/models/weather.dart';
import 'package:complete_weather_app/weather/usecases/fetch_weather.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_page_viewmodel.freezed.dart';

@freezed
abstract class WeatherPageState with _$WeatherPageState {
  const factory WeatherPageState.loading() = WeatherLoadingState;
  const factory WeatherPageState.success(List<Weather> weathers) = WeatherSuccessState;
  const factory WeatherPageState.error([String message]) = WeatherErrorState;
}

class WeatherPageViewModel with ChangeNotifier {
  final FetchWeather _fetchWeatherUseCase;
  final LoadWatchedCities _loadWatchedCitites;
  WeatherPageState _state = WeatherPageState.loading();

  WeatherPageViewModel(FetchWeather fetchWeatherUseCase, LoadWatchedCities loadWatchedCities)
      : _fetchWeatherUseCase = fetchWeatherUseCase,
        _loadWatchedCitites = loadWatchedCities;

  WeatherPageState get state => _state;

  void fetchWeather() {
    Future.microtask(() async {
      _state = WeatherPageState.loading();
      notifyListeners();

      final localWeather = await _fetchWeatherUseCase(FetchWeatherOption.aroundMe());
      final cities = await _loadWatchedCitites();
      final List<Weather> weathers = [localWeather];
      for (var city in cities) {
        final weather = await _fetchWeatherUseCase(FetchWeatherOption.inCity(city.url));
        weathers.add(weather);
      }
      weathers.removeWhere((element) => element == null);
      if (weathers.isEmpty) {
        _state = WeatherPageState.error("Aucune données météo trouvé");
        notifyListeners();
        return;
      }

      _state = WeatherPageState.success(weathers);
      notifyListeners();
    });
  }
}
