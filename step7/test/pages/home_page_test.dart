import 'dart:io';

import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:codelab_weather_app/domain/repositories/cities_repository.dart';
import 'package:codelab_weather_app/domain/repositories/location_repository.dart';
import 'package:codelab_weather_app/domain/repositories/watched_cities_repository.dart';
import 'package:codelab_weather_app/domain/repositories/weather_repository.dart';
import 'package:codelab_weather_app/pages/components/selected_location_drawer.dart';
import 'package:codelab_weather_app/pages/home_page.dart';
import 'package:codelab_weather_app/pages/weather_overview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:network_image_mock/network_image_mock.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

class MockCitiesRepository extends Mock implements CitiesRepository {}

class MockWatchedCitiesRepository extends Mock
    implements WatchedCitiesRepository {}

class MockLocationRepository extends Mock implements LocationRepository {}

void main() {
  WeatherRepository weatherRepository;
  CitiesRepository citiesRepository;
  WatchedCitiesRepository watchedCitiesRepository;
  LocationRepository locationRepository;

  setUp(() {
    weatherRepository = MockWeatherRepository();
    citiesRepository = MockCitiesRepository();
    watchedCitiesRepository = MockWatchedCitiesRepository();
    locationRepository = MockLocationRepository();

    when(weatherRepository.getFromLocation(any)).thenAnswer(
        (realInvocation) async => WeatherStatus.success(Weather("", "", true,
                "12/11/2020", "", 10, 10, 5, 'SE', 1099.9, '', <HourlyForecast>[
              HourlyForecast(
                  DateTime(1970, 1, 1, 0),
                  "https://prevision-meteo.ch/style/images/icon/nuit-nuageuse.png",
                  9),
              HourlyForecast(
                  DateTime(1970, 1, 1, 1),
                  "https://prevision-meteo.ch/style/images/icon/nuit-nuageuse.png",
                  10),
            ], <DailyForecast>[
              DailyForecast("13/11/2020", 15, 9,
                  "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
              DailyForecast("14/11/2020", 16, 10,
                  "https://prevision-meteo.ch/style/images/icon/ensoleille-big.png"),
              DailyForecast("15/11/2020", 16, 11,
                  "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
              DailyForecast("16/11/2020", 13, 3,
                  "https://prevision-meteo.ch/style/images/icon/ciel-voile-big.png"),
            ])));

    when(weatherRepository.getFromCity(any)).thenAnswer(
        (realInvocation) async => WeatherStatus.success(Weather(
                "Paris",
                "France",
                false,
                "12/11/2020",
                "",
                10,
                10,
                5,
                'SE',
                1099.9,
                '', <HourlyForecast>[
              HourlyForecast(
                  DateTime(1970, 1, 1, 0),
                  "https://prevision-meteo.ch/style/images/icon/nuit-nuageuse.png",
                  9),
              HourlyForecast(
                  DateTime(1970, 1, 1, 1),
                  "https://prevision-meteo.ch/style/images/icon/nuit-nuageuse.png",
                  10),
            ], <DailyForecast>[
              DailyForecast("13/11/2020", 15, 9,
                  "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
              DailyForecast("14/11/2020", 16, 10,
                  "https://prevision-meteo.ch/style/images/icon/ensoleille-big.png"),
              DailyForecast("15/11/2020", 16, 11,
                  "https://prevision-meteo.ch/style/images/icon/eclaircies-big.png"),
              DailyForecast("16/11/2020", 13, 3,
                  "https://prevision-meteo.ch/style/images/icon/ciel-voile-big.png"),
            ])));

    when(citiesRepository.getCities())
        .thenAnswer((realInvocation) async => CitiesStatus.success(<City>[]));

    when(watchedCitiesRepository.loadCities())
        .thenAnswer((realInvocation) async => <City>[]);

    when(locationRepository.getLocation()).thenAnswer((realInvocation) async =>
        LocationStatus.success(Location(0.42, -1.222)));
  });

  testWidgets('Loading the home page then opening the selected drawer',
      (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(MaterialApp(
        home: HomePage(
            title: "Weather",
            weatherRepository: weatherRepository,
            citiesRepository: citiesRepository,
            watchedCitiesRepository: watchedCitiesRepository,
            locationRepository: locationRepository),
      ));

      final leading = find.byIcon(Icons.menu);
      await tester.tap(leading);

      await tester.pumpAndSettle();

      final drawer = find.byType(SelectedLocationDrawer);
      final aroundMe = find.byWidgetPredicate((widget) {
        return widget is ListTile &&
            widget.title is Text &&
            (widget.title as Text).data == "Autour de moi" &&
            widget.selected == true;
      });
      expect(drawer, findsOneWidget);
      expect(aroundMe, findsOneWidget);
    });
  });

  testWidgets('Loading the home page then opening the next 4 days',
      (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(MaterialApp(
        home: HomePage(
            title: "Weather",
            weatherRepository: weatherRepository,
            citiesRepository: citiesRepository,
            watchedCitiesRepository: watchedCitiesRepository,
            locationRepository: locationRepository),
      ));
      await tester.pumpAndSettle();

      final nextDays = find.byType(TextButton);
      await tester.tap(nextDays);

      await tester.pumpAndSettle();

      final nextPage = find.byType(WeatherOverviewPage);
      expect(nextPage, findsOneWidget);
    });
  });
}
