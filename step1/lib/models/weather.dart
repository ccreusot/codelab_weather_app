import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class Weather with _$Weather {
  const factory Weather({CityInfo cityInfo}) = WeatherData;

/*, ForecastInfo forecastInfo,
  CurrentCondition currentCondition,
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
      {String name,
      String country,
      String latitude,
      String longitude,
      String elevation,
      String sunrise,
      String sunset}) = CityInfoData;

  factory CityInfo.fromJson(Map<String, dynamic> json) =>
      _$CityInfoFromJson(json);
}
