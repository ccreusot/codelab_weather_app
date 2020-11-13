import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';

@freezed
abstract class City with _$City {
  const factory City(String name, String country, String url) = CityData;
}

@freezed
abstract class CitiesStatus with _$CitiesStatus {
  const factory CitiesStatus.success(List<City> city) = CitiesSuccess;
  const factory CitiesStatus.error([String message]) = CitiesError;
}
