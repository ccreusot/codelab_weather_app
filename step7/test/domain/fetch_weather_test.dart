import 'package:codelab_weather_app/domain/fetch_weather.dart';
import 'package:codelab_weather_app/domain/fetch_weather_from_city.dart';
import 'package:codelab_weather_app/domain/fetch_weather_from_location.dart';
import 'package:codelab_weather_app/domain/models/fetch_weather_option.dart';
import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:codelab_weather_app/domain/repositories/weather_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements WeatherRepository {}

void main() {
  final repository = MockRepository();
  final useCase = FetchWeather(
      FetchWeatherFromLocation(repository), FetchWeatherFromCity(repository));

  test('We want to fetch the weather from our location but an error occured',
      () async {
    final expected = null;

    when(repository.getFromLocation(any))
        .thenAnswer((realInvocation) async => WeatherStatus.error("Any error"));

    expect(await useCase(FetchWeatherOption.aroundMe(Location(0.32, -0.3444))),
        expected);
  });
  test('We want to fetch the weather from our location', () async {
    final expected = Weather("", "", true, DateTime.now().toString(), "", 10,
        10, 5, 'SE', 1099.9, 'url_icon', List(), List());

    when(repository.getFromLocation(any))
        .thenAnswer((realInvocation) async => WeatherStatus.success(expected));

    expect(await useCase(FetchWeatherOption.aroundMe(Location(0.32, -0.3444))),
        expected);
  });

  test('We want to fetch the weather from a city but an error occured',
      () async {
    final expected = null;

    when(repository.getFromCity(any))
        .thenAnswer((realInvocation) async => WeatherStatus.error("Any error"));

    expect(await useCase(FetchWeatherOption.inCity("paris")), expected);
  });

  test('We want to fetch the weather from a city', () async {
    final expected = Weather(
        "Paris",
        "France",
        false,
        DateTime.now().toString(),
        "",
        10,
        10,
        5,
        'SE',
        1099.9,
        'url_icon',
        List(),
        List());

    when(repository.getFromCity(any))
        .thenAnswer((realInvocation) async => WeatherStatus.success(expected));

    expect(await useCase(FetchWeatherOption.inCity("paris")), expected);
  });
}
