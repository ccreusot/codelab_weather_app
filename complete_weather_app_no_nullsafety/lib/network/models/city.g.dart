// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CitiesData _$_$CitiesDataFromJson(Map<String, dynamic> json) {
  return _$CitiesData(
    (json['cities'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : City.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$CitiesDataToJson(_$CitiesData instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };

_$CityData _$_$CityDataFromJson(Map<String, dynamic> json) {
  return _$CityData(
    json['name'] as String,
    json['npa'] as String,
    json['region'] as String,
    json['country'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$CityDataToJson(_$CityData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'npa': instance.zipCode,
      'region': instance.region,
      'country': instance.country,
      'url': instance.url,
    };
