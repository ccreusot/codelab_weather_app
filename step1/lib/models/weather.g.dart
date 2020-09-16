// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherData _$_$WeatherDataFromJson(Map<String, dynamic> json) {
  return _$WeatherData(
    cityInfo: json['cityInfo'] == null
        ? null
        : CityInfo.fromJson(json['cityInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$WeatherDataToJson(_$WeatherData instance) =>
    <String, dynamic>{
      'cityInfo': instance.cityInfo,
    };

_$CityInfoData _$_$CityInfoDataFromJson(Map<String, dynamic> json) {
  return _$CityInfoData(
    name: json['name'] as String,
    country: json['country'] as String,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    elevation: json['elevation'] as String,
    sunrise: json['sunrise'] as String,
    sunset: json['sunset'] as String,
  );
}

Map<String, dynamic> _$_$CityInfoDataToJson(_$CityInfoData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
