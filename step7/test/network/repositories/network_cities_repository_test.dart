import 'dart:convert' as convert;

import 'package:codelab_weather_app/cities/models/city.dart';
import 'package:codelab_weather_app/network/models/city.dart' as NetworkCities;
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:codelab_weather_app/network/repositories/network_cities_repository.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../fixtures/fixtures.dart';

class MockNetworkService extends Mock implements NetworkService {}

void main() {
  test(
      'We want to retrieve the list of cities but an connection error occured, we should retrieve CitiesStatus.error("Connection error")',
      () async {
    final service = MockNetworkService();
    final repository = NetworkCitiesRepository(service);

    when(service.getCities()).thenThrow(http.ClientException("Connection error"));

    expect(await repository.getCities(), CitiesStatus.error("Connection error"));
  });

  test(
      'We want to retrieve the list of cities but any other error occured, we should retrieve CitiesStatus.error("Something went wrong")',
      () async {
    final service = MockNetworkService();
    final repository = NetworkCitiesRepository(service);

    when(service.getCities()).thenThrow(Exception());

    expect(await repository.getCities(), CitiesStatus.error("Something went wrong"));
  });

  test('We retrieve the list of cities and we get CitiesStatus.success(<City>[...])', () async {
    final file = await fixture("list_cities.json");
    final service = MockNetworkService();
    final repository = NetworkCitiesRepository(service);

    when(service.getCities()).thenAnswer((realInvocation) async =>
        NetworkCities.CitiesConverter().fromJson(convert.jsonDecode(await file.readAsString())));

    expect(
        await repository.getCities(),
        CitiesStatus.success(<City>[
          City("Aaigem", "BEL", "aaigem"),
          City("Aalbeke", "BEL", "aalbeke"),
          City("Aalst", "BEL", "aalst"),
        ]));
  });
}
