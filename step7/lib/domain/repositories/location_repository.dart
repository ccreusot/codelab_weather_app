import 'package:codelab_weather_app/domain/models/location.dart';

abstract class LocationRepository {
  Future<LocationStatus> getLocation();
}
