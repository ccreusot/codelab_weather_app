import 'package:complete_weather_app/weather/models/location.dart';

abstract class LocationRepository {
  Future<LocationStatus> getLocation();
}
