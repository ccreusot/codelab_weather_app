import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_weather_option.freezed.dart';

@freezed
abstract class FetchWeatherOption with _$FetchWeatherOption {
  const factory FetchWeatherOption.aroundMe(Location location) = AroundMe;
  const factory FetchWeatherOption.inCity(String cityUrl) = InCity;
}
