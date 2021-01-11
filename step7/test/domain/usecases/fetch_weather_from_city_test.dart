import 'package:codelab_weather_app/domain/usecases/fetch_weather_from_city.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:codelab_weather_app/domain/repositories/weather_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements WeatherRepository {}

void main() {
  final repository = MockRepository();

  test(
      'Given we want to retrieve the weather from an unknown city, when we\'re fetching the weather it should return UnknownCityError',
      () {
    final expected = WeatherStatus.error("UnknownCityError");
    when(repository.getFromCity(any))
        .thenAnswer((realInvocation) async => expected);
    final useCase = FetchWeatherFromCity(repository);

    expect(useCase("city"), completion(expected));
  });

  test('We retrieve the weather from our repository with an known city', () {
    final expected = WeatherStatus.success(Weather(
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
        List()));
    when(repository.getFromCity(any))
        .thenAnswer((realInvocation) async => expected);
    final useCase = FetchWeatherFromCity(repository);

    expect(useCase("paris"), completion(expected));
  });
}
