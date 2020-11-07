import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
abstract class Cities with _$Cities {
  const factory Cities(Map<String, City> cities) = CitiesData;

  factory Cities.fromJson(Map<String, dynamic> json) => _$CitiesFromJson(json);
}

@freezed
abstract class City with _$City {
  @HiveType(typeId: 2, adapterName: 'CityClassAdapter')
  const factory City(
      @HiveField(0) String name,
      @HiveField(1) @nullable @JsonKey(name: "npa") String zipCode,
      @HiveField(2) @nullable String region,
      @HiveField(3) String country,
      @HiveField(4) String url) = CityData;

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
