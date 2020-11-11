import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather(
      @JsonKey(name: "city_info")
      CityInfo cityInfo,
      @JsonKey(name: "forecast_info")
      ForecastInfo forecastInfo,
      @JsonKey(name: "current_condition")
      CurrentCondition currentCondition,
      @JsonKey(name: "fcst_day_0")
      ForecastDay fcstDay0,
      @JsonKey(name: "fcst_day_1")
      ForecastDay fcstDay1,
      @JsonKey(name: "fcst_day_2")
      ForecastDay fcstDay2,
      @JsonKey(name: "fcst_day_3")
      ForecastDay fcstDay3,
      @JsonKey(name: "fcst_day_4")
      ForecastDay fcstDay4) = WeatherData;

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
      @nullable String latitude, @nullable String longitude, @nullable String elevation) = ForecastInfoData;

  factory ForecastInfo.fromJson(Map<String, dynamic> json) =>
      _$ForecastInfoFromJson(json);
}

@freezed
abstract class CurrentCondition with _$CurrentCondition {
  const factory CurrentCondition(
      String date,
      String hour,
      int tmp,
      @JsonKey(name: "wnd_spd")
      int wndSpd,
      @JsonKey(name: "wnd_gust")
      int wndGust,
      @JsonKey(name: "wnd_dir")
      String wndDir,
      double pressure,
      int humidity,
      String condition,
      @JsonKey(name: "condition_key")
      String conditionKey,
      String icon,
      @JsonKey(name: "icon_big")
      String iconBig) = CurrentConditionData;

  factory CurrentCondition.fromJson(Map<String, dynamic> json) =>
      _$CurrentConditionFromJson(json);
}

@freezed
abstract class ForecastDay with _$ForecastDay {
  const factory ForecastDay(
      String date,
      @JsonKey(name: "day_short")
      String dayShort,
      @JsonKey(name: "day_long")
      String dayLong,
      int tmin,
      int tmax,
      String condition,
      @JsonKey(name: "condition_key")
      String conditionKey,
      String icon,
      @JsonKey(name: "icon_big")
      String iconBig,
      @JsonKey(name: "hourly_data")
      Map<String, HourlyData> hourlyData
      ) = ForecastDayData;

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);
}

@freezed
abstract class HourlyData with _$HourlyData {
  const factory HourlyData(
      @JsonKey(name: "ICON")
      String icon,
      @JsonKey(name: "CONDITION")
      String condition,
      @JsonKey(name: "CONDITION_KEY")
      String conditionKey,
      @JsonKey(name: "TMP2m")
      double tMP2m,
      ) = HourlyDataData;

  factory HourlyData.fromJson(Map<String, dynamic> json) =>
      _$HourlyDataFromJson(json);
}
