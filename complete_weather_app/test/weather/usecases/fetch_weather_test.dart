import 'package:complete_weather_app/weather/repositories/location_repository.dart';
import 'package:complete_weather_app/weather/usecases/fetch_location.dart';
import 'package:complete_weather_app/weather/usecases/fetch_weather.dart';
import 'package:complete_weather_app/weather/usecases/fetch_weather_from_city.dart';
import 'package:complete_weather_app/weather/usecases/fetch_weather_from_location.dart';
import 'package:complete_weather_app/weather/models/fetch_weather_option.dart';
import 'package:complete_weather_app/weather/models/location.dart';
import 'package:complete_weather_app/weather/models/weather.dart';
import 'package:complete_weather_app/weather/repositories/weather_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements WeatherRepository {}

class MockLocationRepository extends Mock implements LocationRepository {}

void main() {
  final repository = MockRepository();
  final locationRepository = MockLocationRepository();
  final useCase = FetchWeather(
      FetchLocation(locationRepository), FetchWeatherFromLocation(repository), FetchWeatherFromCity(repository));

  test('We want to fetch the weather from our location but we don\'t have the permission', () async {
    final expected = null;

    when(locationRepository.getLocation())
        .thenAnswer((realInvocation) async => LocationStatus.error("You don't have the permission"));

    expect(await useCase(FetchWeatherOption.aroundMe()), expected);
  });

  test('We want to fetch the weather from our location but an error occured', () async {
    final expected = null;

    when(locationRepository.getLocation())
        .thenAnswer((realInvocation) async => LocationStatus.success(Location(0.32, -0.3444)));
    when(repository.getFromLocation(any)).thenAnswer((realInvocation) async => WeatherStatus.error("Any error"));

    expect(await useCase(FetchWeatherOption.aroundMe()), expected);
  });

  test('We want to fetch the weather from our location', () async {
    final expected =
        Weather("", "", true, DateTime.now().toString(), "", 10, 10, 5, 'SE', 1099.9, 'url_icon', List(), List());

    when(repository.getFromLocation(any)).thenAnswer((realInvocation) async => WeatherStatus.success(expected));

    expect(await useCase(FetchWeatherOption.aroundMe()), expected);
  });

  test('We want to fetch the weather from a city but an error occured', () async {
    final expected = null;

    when(repository.getFromCity(any)).thenAnswer((realInvocation) async => WeatherStatus.error("Any error"));

    expect(await useCase(FetchWeatherOption.inCity("paris")), expected);
  });

  test('We want to fetch the weather from a city', () async {
    final expected = Weather(
        "Paris", "France", false, DateTime.now().toString(), "", 10, 10, 5, 'SE', 1099.9, 'url_icon', List(), List());

    when(repository.getFromCity(any)).thenAnswer((realInvocation) async => WeatherStatus.success(expected));

    expect(await useCase(FetchWeatherOption.inCity("paris")), expected);
  });
}
