import 'package:complete_weather_app/cities/usecases/fetch_cities.dart';
import 'package:complete_weather_app/cities/models/city.dart';
import 'package:complete_weather_app/cities/repositories/cities_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements CitiesRepository {}

void main() {
  final CitiesRepository repository = MockRepository();

  test('When we try to fetch the cities list and we are getting an error.', () {
    final expected = CitiesStatus.error("No cities found.");
    when(repository.getCities()).thenAnswer((realInvocation) async => expected);

    final useCase = FetchCities(repository);

    expect(useCase(), completion(expected));
  });

  test('We retrieve the cities list.', () {
    final expected = CitiesStatus.success(<City>[]);
    when(repository.getCities()).thenAnswer((realInvocation) async => expected);

    final useCase = FetchCities(repository);

    expect(useCase(), completion(expected));
  });
}
