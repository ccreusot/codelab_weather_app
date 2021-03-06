import 'package:complete_weather_app/weather/models/weather.dart';

class FetchHourlyForecastByHour {
  Future<List<HourlyForecast>> call(List<HourlyForecast> hourlyForecast, int hour) async {
    return hourlyForecast.where((element) => element.hour.hour >= hour).toList();
  }
}
