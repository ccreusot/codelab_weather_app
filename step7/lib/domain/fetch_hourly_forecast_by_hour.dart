import 'package:codelab_weather_app/domain/models/weather.dart';

class FetchHourlyForecastByHour {
  Future<List<HourlyForecast>> call(
      List<HourlyForecast> hourlyForecast, int hour) async {
    return hourlyForecast
        .where((element) => element.hour.hour >= hour)
        .toList();
  }
}
