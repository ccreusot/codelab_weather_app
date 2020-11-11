import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/search_cities.dart';
import 'package:test/test.dart';
import 'dart:core';

void main() {
  final searchUseCase = SearchCities();

  test('Return empty list when cities are not found.', () async {
    final cities = <City>[
      City("Paris", "France", "paris"),
      City("L'Ile", "France", "lile"),
      City("Zurich", "Suisse", "zurich"),
    ];

    expect(await searchUseCase(cities, "villeur-banne"), []);
  });

  test('Return listed cities form search name.', () async {
    final cities = <City>[
      City("Paris", "France", "paris"),
      City("L'Ile", "France", "lile"),
      City("Zurich", "Suisse", "zurich"),
    ];

    expect(await searchUseCase(cities, "Paris"),
        <City>[City("Paris", "France", "paris")]);
  });
}
