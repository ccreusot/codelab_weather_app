// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherData _$_$WeatherDataFromJson(Map<String, dynamic> json) {
  return _$WeatherData(
    json['city_info'] == null
        ? null
        : CityInfo.fromJson(json['city_info'] as Map<String, dynamic>),
    json['forecast_info'] == null
        ? null
        : ForecastInfo.fromJson(json['forecast_info'] as Map<String, dynamic>),
    json['current_condition'] == null
        ? null
        : CurrentCondition.fromJson(
            json['current_condition'] as Map<String, dynamic>),
    json['fcst_day_0'] == null
        ? null
        : ForecastDay.fromJson(json['fcst_day_0'] as Map<String, dynamic>),
    json['fcst_day_1'] == null
        ? null
        : ForecastDay.fromJson(json['fcst_day_1'] as Map<String, dynamic>),
    json['fcst_day_2'] == null
        ? null
        : ForecastDay.fromJson(json['fcst_day_2'] as Map<String, dynamic>),
    json['fcst_day_3'] == null
        ? null
        : ForecastDay.fromJson(json['fcst_day_3'] as Map<String, dynamic>),
    json['fcst_day_4'] == null
        ? null
        : ForecastDay.fromJson(json['fcst_day_4'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$WeatherDataToJson(_$WeatherData instance) =>
    <String, dynamic>{
      'city_info': instance.cityInfo,
      'forecast_info': instance.forecastInfo,
      'current_condition': instance.currentCondition,
      'fcst_day_0': instance.fcstDay0,
      'fcst_day_1': instance.fcstDay1,
      'fcst_day_2': instance.fcstDay2,
      'fcst_day_3': instance.fcstDay3,
      'fcst_day_4': instance.fcstDay4,
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
    json['latitude'] as String,
    json['longitude'] as String,
    json['elevation'] as String,
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
    json['wnd_spd'] as int,
    json['wnd_gust'] as int,
    json['wnd_dir'] as String,
    (json['pressure'] as num)?.toDouble(),
    json['humidity'] as int,
    json['condition'] as String,
    json['condition_key'] as String,
    json['icon'] as String,
    json['icon_big'] as String,
  );
}

Map<String, dynamic> _$_$CurrentConditionDataToJson(
        _$CurrentConditionData instance) =>
    <String, dynamic>{
      'date': instance.date,
      'hour': instance.hour,
      'tmp': instance.tmp,
      'wnd_spd': instance.wndSpd,
      'wnd_gust': instance.wndGust,
      'wnd_dir': instance.wndDir,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'condition': instance.condition,
      'condition_key': instance.conditionKey,
      'icon': instance.icon,
      'icon_big': instance.iconBig,
    };

_$ForecastDayData _$_$ForecastDayDataFromJson(Map<String, dynamic> json) {
  return _$ForecastDayData(
    json['date'] as String,
    json['day_short'] as String,
    json['day_long'] as String,
    json['tmin'] as int,
    json['tmax'] as int,
    json['condition'] as String,
    json['condition_key'] as String,
    json['icon'] as String,
    json['icon_big'] as String,
    (json['hourly_data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : HourlyData.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$ForecastDayDataToJson(_$ForecastDayData instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day_short': instance.dayShort,
      'day_long': instance.dayLong,
      'tmin': instance.tmin,
      'tmax': instance.tmax,
      'condition': instance.condition,
      'condition_key': instance.conditionKey,
      'icon': instance.icon,
      'icon_big': instance.iconBig,
      'hourly_data': instance.hourlyData,
    };

_$HourlyDataData _$_$HourlyDataDataFromJson(Map<String, dynamic> json) {
  return _$HourlyDataData(
    json['ICON'] as String,
    json['CONDITION'] as String,
    json['CONDITION_KEY'] as String,
    (json['TMP2m'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$HourlyDataDataToJson(_$HourlyDataData instance) =>
    <String, dynamic>{
      'ICON': instance.icon,
      'CONDITION': instance.condition,
      'CONDITION_KEY': instance.conditionKey,
      'TMP2m': instance.tMP2m,
    };
