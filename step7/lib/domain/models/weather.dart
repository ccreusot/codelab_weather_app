import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather(
      String cityName,
      String countryName,
      bool fromGeolocation,
      String date,
      String condition,
      int temperature,
      int windSpeed,
      int humidity,
      String windDirection,
      double pressure,
      String iconUrl,
      List<HourlyForecast> hourlyForecast,
      List<DailyForecast> dailyForecast) = WeatherData;
}

@freezed
abstract class HourlyForecast with _$HourlyForecast {
  const factory HourlyForecast(
    String hour,
    String icon,
    int temperature,
  ) = HourlyForecastData;
}

@freezed
abstract class DailyForecast with _$DailyForecast {
  const factory DailyForecast(
          String date, int temperatureMax, int temperatureMin, String iconUrl) =
      DailyForecastData;
}

@freezed
abstract class WeatherStatus with _$WeatherStatus {
  const factory WeatherStatus.success(Weather weather) = WeatherSuccess;
  const factory WeatherStatus.error([String message]) = WeatherError;
}
