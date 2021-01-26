import 'package:complete_weather_app/weather/models/location.dart';
import 'package:complete_weather_app/weather/repositories/location_repository.dart';
import 'package:location/location.dart' as gps;

class LocalLocationRepository implements LocationRepository {
  @override
  Future<LocationStatus> getLocation() async {
    gps.Location location = gps.Location();

    var serviceEnabled = await location.serviceEnabled() ? true : await location.requestService();
    if (!serviceEnabled) return LocationStatus.error("Service not enabled");

    var permissionGranted = await location.hasPermission();
    if (permissionGranted == gps.PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != gps.PermissionStatus.granted) return LocationStatus.error("Permission not granted");
    }

    var locationData = await location.getLocation();
    return LocationStatus.success(Location(locationData.latitude, locationData.longitude));
  }
}
