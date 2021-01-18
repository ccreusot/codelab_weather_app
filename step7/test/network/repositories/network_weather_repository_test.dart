import 'package:codelab_weather_app/weather/models/location.dart';
import 'package:codelab_weather_app/weather/models/weather.dart';
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:codelab_weather_app/network/repositories/network_weather_repository.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:codelab_weather_app/network/models/weather.dart' as NetworkWeather;

import '../../fixtures/fixtures.dart';
import 'dart:convert' as convert;

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  final service = MockNetworkService();
  test(
      'The network service is in error, we want to get the weather from our current location, we should receive a WeatherStatus.error',
      () async {
    final repository = NetworkWeatherRepository(service);

    when(service.getLocalWeather(any, any)).thenThrow(ClientException("Connection error"));

    expect(await repository.getFromLocation(Location(0.32, -2.100)), WeatherStatus.error("Connection error"));
  });

  test(
      'If there is any other error, we want to get the weather from our current location, we should receive a WeatherStatus.error',
      () async {
    final repository = NetworkWeatherRepository(service);

    when(service.getLocalWeather(any, any)).thenThrow(Exception());

    expect(await repository.getFromLocation(Location(0.32, -2.100)), WeatherStatus.error("Something went wrong."));
  });

  test(
      'The network service is working great, we want to get the weather from our current location, we should receive a WeatherStatus.success(Weather(XX))',
      () async {
    final file = await fixture("weather_location.json");
    final weather = Weather("", "", true, "12/11/2020", "Eclaircies", 12, 1, 79, "O", 1019,
        "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png", <HourlyForecast>[
      HourlyForecast(DateTime(1970, 1, 1, 0), "https://prevision-meteo.ch/style/images/icon/nuit-nuageuse.png", 9),
      HourlyForecast(DateTime(1970, 1, 1, 1), "https://prevision-meteo.ch/style/images/icon/nuit-nuageuse.png", 10),
    ], <DailyForecast>[
      DailyForecast("13/11/2020", 15, 9, "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
      DailyForecast("14/11/2020", 16, 10, "https://prevision-meteo.ch/style/images/icon/ensoleille-big.png"),
      DailyForecast("15/11/2020", 16, 11, "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
      DailyForecast("16/11/2020", 13, 3, "https://prevision-meteo.ch/style/images/icon/ciel-voile-big.png"),
    ]);
    final repository = NetworkWeatherRepository(service);

    when(service.getLocalWeather(any, any)).thenAnswer(
        (realInvocation) async => NetworkWeather.Weather.fromJson(convert.jsonDecode(await file.readAsString())));

    expect(await repository.getFromLocation(Location(0.32, -2.100)), WeatherStatus.success(weather));
  });

  test(
      'The network service is in error, we want to get the weather from a city, we should receive a WeatherStatus.error',
      () async {
    final repository = NetworkWeatherRepository(service);

    when(service.getCityWeather(any)).thenThrow(ClientException("Connection error"));

    expect(await repository.getFromCity("paris"), WeatherStatus.error("Connection error"));
  });

  test('If there is any other error, we want to get the weather from a city, we should receive a WeatherStatus.error',
      () async {
    final repository = NetworkWeatherRepository(service);

    when(service.getCityWeather(any)).thenThrow(Exception());

    expect(await repository.getFromCity("paris"), WeatherStatus.error("Something went wrong"));
  });

  test(
      'The network service is working great, we want to get the weather from a city, we should receive a WeatherStatus.success(Weather(XX))',
      () async {
    final file = await fixture("weather_city.json");
    final weather = Weather("Paris", "France", false, "13/11/2020", "Fortement nuageux", 13, 17, 82, "S", 1013.7,
        "https://prevision-meteo.ch/style/images/icon/fortement-nuageux-big.png", <HourlyForecast>[
      HourlyForecast(DateTime(1970, 1, 1, 0), "https://prevision-meteo.ch/style/images/icon/nuit-claire.png", 11),
      HourlyForecast(DateTime(1970, 1, 1, 1), "https://prevision-meteo.ch/style/images/icon/nuit-nuageuse.png", 11),
    ], <DailyForecast>[
      DailyForecast("14/11/2020", 16, 10, "https://prevision-meteo.ch/style/images/icon/ciel-voile-big.png"),
      DailyForecast("15/11/2020", 15, 9, "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
      DailyForecast("16/11/2020", 12, 8, "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
      DailyForecast("17/11/2020", 11, 9, "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
    ]);
    final repository = NetworkWeatherRepository(service);

    when(service.getCityWeather(any)).thenAnswer(
        (realInvocation) async => NetworkWeather.Weather.fromJson(convert.jsonDecode(await file.readAsString())));

    expect(await repository.getFromCity("paris"), WeatherStatus.success(weather));
  });
}
