import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather(CityInfo cityInfo, ForecastInfo forecastInfo,
      CurrentCondition currentCondition) = WeatherData;

/*
  ForecastDay fcstDay0,
    ForecastDay fcstDay1,
    ForecastDay fcstDay2,
    ForecastDay fcstDay3,
    ForecastDay fcstDay4})*/

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
abstract class CityInfo with _$CityInfo {
  const factory CityInfo(
      String name,
      String country,
      String latitude,
      String longitude,
      String elevation,
      String sunrise,
      String sunset) = CityInfoData;

  factory CityInfo.fromJson(Map<String, dynamic> json) =>
      _$CityInfoFromJson(json);
}

@freezed
abstract class ForecastInfo with _$ForecastInfo {
  const factory ForecastInfo(
      double latitude, double longitude, double elevation) = ForecastInfoData;

  factory ForecastInfo.fromJson(Map<String, dynamic> json) =>
      _$ForecastInfoFromJson(json);
}

@freezed
abstract class CurrentCondition with _$CurrentCondition {
  const factory CurrentCondition(
      String date,
      String hour,
      int tmp,
      int wndSpd,
      int wndGust,
      String wndDir,
      double pressure,
      int humidity,
      String condition,
      String conditionKey,
      String icon,
      String iconBig) = CurrentConditionData;

  factory CurrentCondition.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionFromJson(json);
}
