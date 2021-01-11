import 'package:codelab_weather_app/domain/usecases/load_watched_cities.dart';
import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/repositories/watched_cities_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements WatchedCitiesRepository {}

void main() {
  final repository = MockRepository();
  test(
      'We want to load the list of watched city, if it is empty it should return an empty list',
      () async {
    final useCase = LoadWatchedCities(repository);

    when(repository.loadCities())
        .thenAnswer((realInvocation) async => <City>[]);

    expect(await useCase(), []);
  });

  test(
      'We want to load the list of watched city, if not empty it should return the list filled.',
      () async {
    final expected = <City>[City("Paris", "France", "paris")];
    final useCase = LoadWatchedCities(repository);

    when(repository.loadCities())
        .thenAnswer((realInvocation) async => expected);

    expect(await useCase(), expected);
  });
}
