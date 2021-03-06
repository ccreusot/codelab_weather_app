import 'package:complete_weather_app/cities/models/city.dart';
import 'package:complete_weather_app/cities/repositories/watched_cities_repository.dart';
import 'package:complete_weather_app/cities/usecases/add_city_to_watch.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements WatchedCitiesRepository {}

void main() {
  WatchedCitiesRepository repository;

  setUp(() {
    repository = MockRepository();
  });

  test('We want save a city in our watched cities', () {
    final city = City("Paris", "France", "paris");
    final useCase = AddCityToWatch(repository);

    useCase(city);

    verify(repository.addCity(city));
  });

  test('We want to do nothing if city is null', () {
    final useCase = AddCityToWatch(repository);

    useCase(null);

    verifyZeroInteractions(repository);
  });
}
