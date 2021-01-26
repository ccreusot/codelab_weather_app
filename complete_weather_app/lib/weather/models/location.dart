import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
abstract class Location with _$Location {
  const factory Location(double latitude, double longitude) = LocationData;
}

@freezed
abstract class LocationStatus with _$LocationStatus {
  const factory LocationStatus.success(Location location) = LocationSuccess;
  const factory LocationStatus.error([String message]) = LocationError;
}
