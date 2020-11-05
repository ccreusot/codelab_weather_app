import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
abstract class Cities with _$Cities {
  const factory Cities(Map<String, City> cities) = CitiesData;

  factory Cities.fromJson(Map<String, dynamic> json) => _$CitiesFromJson(json);
}

@freezed
abstract class City with _$City {
  const factory City(
      String name,
      @nullable @JsonKey(name: "npa") String zipCode,
      @nullable String region,
      String country,
      String url) = CityData;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

class CitiesConverter implements JsonConverter<Cities, Map<String, dynamic>> {
  @override
  Cities fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    Map<String, dynamic> cities = <String, dynamic>{"cities": json};
    return Cities.fromJson(cities);
  }

  @override
  Map<String, dynamic> toJson(Cities object) => object.toJson();
}
