import 'package:codelab_weather_app/weather/usecases/fetch_hourly_forecast_by_hour.dart';
import 'package:codelab_weather_app/weather/models/weather.dart';
import 'package:test/test.dart';

void main() {
  test('Return the forecast for the same hour from the list', () async {
    final hourlyForecast = <HourlyForecast>[
      HourlyForecast(DateTime(2020, 11, 16, 0, 0), "icon", 0),
      HourlyForecast(DateTime(2020, 11, 16, 1, 0), "icon", 0),
      HourlyForecast(DateTime(2020, 11, 16, 2, 0), "icon", 0),
    ];

    final useCase = FetchHourlyForecastByHour();

    expect(await useCase(hourlyForecast, 2), [HourlyForecast(DateTime(2020, 11, 16, 2, 0), "icon", 0)]);
  });

  test('Return the forecast greater or equals of the hour from the list', () async {
    final hourlyForecast = <HourlyForecast>[
      HourlyForecast(DateTime(2020, 11, 16, 0, 0), "icon", 0),
      HourlyForecast(DateTime(2020, 11, 16, 1, 0), "icon", 0),
      HourlyForecast(DateTime(2020, 11, 16, 2, 0), "icon", 0),
    ];

    final useCase = FetchHourlyForecastByHour();

    expect(await useCase(hourlyForecast, 1), [
      HourlyForecast(DateTime(2020, 11, 16, 1, 0), "icon", 0),
      HourlyForecast(DateTime(2020, 11, 16, 2, 0), "icon", 0)
    ]);
  });
}
