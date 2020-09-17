// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherData _$_$WeatherDataFromJson(Map<String, dynamic> json) {
  return _$WeatherData(
    json['cityInfo'] == null
        ? null
        : CityInfo.fromJson(json['cityInfo'] as Map<String, dynamic>),
    json['forecastInfo'] == null
        ? null
        : ForecastInfo.fromJson(json['forecastInfo'] as Map<String, dynamic>),
    json['currentCondition'] == null
        ? null
        : CurrentCondition.fromJson(
            json['currentCondition'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$WeatherDataToJson(_$WeatherData instance) =>
    <String, dynamic>{
      'cityInfo': instance.cityInfo,
      'forecastInfo': instance.forecastInfo,
      'currentCondition': instance.currentCondition,
    };

_$CityInfoData _$_$CityInfoDataFromJson(Map<String, dynamic> json) {
  return _$CityInfoData(
    json['name'] as String,
    json['country'] as String,
    json['latitude'] as String,
    json['longitude'] as String,
    json['elevation'] as String,
    json['sunrise'] as String,
    json['sunset'] as String,
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

_$ForecastInfoData _$_$ForecastInfoDataFromJson(Map<String, dynamic> json) {
  return _$ForecastInfoData(
    (json['latitude'] as num)?.toDouble(),
    (json['longitude'] as num)?.toDouble(),
    (json['elevation'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$ForecastInfoDataToJson(_$ForecastInfoData instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
    };

_$CurrentConditionData _$_$CurrentConditionDataFromJson(
    Map<String, dynamic> json) {
  return _$CurrentConditionData(
    json['date'] as String,
    json['hour'] as String,
    json['tmp'] as int,
    json['wndSpd'] as int,
    json['wndGust'] as int,
    json['wndDir'] as String,
    (json['pressure'] as num)?.toDouble(),
    json['humidity'] as int,
    json['condition'] as String,
    json['conditionKey'] as String,
    json['icon'] as String,
    json['iconBig'] as String,
  );
}

Map<String, dynamic> _$_$CurrentConditionDataToJson(
        _$CurrentConditionData instance) =>
    <String, dynamic>{
      'date': instance.date,
      'hour': instance.hour,
      'tmp': instance.tmp,
      'wndSpd': instance.wndSpd,
      'wndGust': instance.wndGust,
      'wndDir': instance.wndDir,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'condition': instance.condition,
      'conditionKey': instance.conditionKey,
      'icon': instance.icon,
      'iconBig': instance.iconBig,
    };
