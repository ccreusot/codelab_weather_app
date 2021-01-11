import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/repositories/watched_cities_repository.dart';
import 'package:codelab_weather_app/domain/usecases/add_city_to_watch.dart';
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
