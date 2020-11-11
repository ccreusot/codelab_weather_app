import 'package:codelab_weather_app/domain/fetch_location.dart';
import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:codelab_weather_app/domain/repositories/location_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockRepository extends Mock implements LocationRepository {}

void main() {
  final repository = MockRepository();
  test(
      'Given we want to retrieve the location and the repository return an UnauthorizedPermissionError',
      () {
    final expected = LocationStatus.error('UnauthorizedPermissionError');
    when(repository.getLocation())
        .thenAnswer((realInvocation) async => expected);

    final useCase = FetchLocation(repository);

    expect(useCase(), completion(expected));
  });

  test('We retrieve the location from the repository', () {
    final expected = LocationStatus.success(Location(0.42, -1.222));
    when(repository.getLocation())
        .thenAnswer((realInvocation) async => expected);

    final useCase = FetchLocation(repository);

    expect(useCase(), completion(expected));
  });
}
