import 'package:complete_weather_app/weather/usecases/fetch_weather_from_location.dart';
import 'package:complete_weather_app/weather/models/location.dart';
import 'package:complete_weather_app/weather/models/weather.dart';
import 'package:complete_weather_app/weather/repositories/weather_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements WeatherRepository {}

void main() {
  final repository = MockRepository();

  test(
      'Given we\'re retrieving weather from a unknown location, we should reiceve an UnknownLocationError from our use case',
      () {
    final expected = WeatherStatus.error("UnknownLocationError");
    when(repository.getFromLocation(any)).thenAnswer((realInvocation) async => expected);
    final useCase = FetchWeatherFromLocation(repository);

    expect(useCase(Location(0.0, 0.0)), completion(expected));
  });

  test('We retrieve the weather from a known location', () {
    final expected = WeatherStatus.success(
        Weather("", "", true, DateTime.now().toString(), "", 10, 10, 5, 'SE', 1099.9, 'url_icon', List(), List()));
    when(repository.getFromLocation(any)).thenAnswer((realInvocation) async => expected);

    final useCase = FetchWeatherFromLocation(repository);

    expect(useCase(Location(0.0, 0.0)), completion(expected));
  });
}
