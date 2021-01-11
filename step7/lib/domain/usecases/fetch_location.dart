import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:codelab_weather_app/domain/repositories/location_repository.dart';

class FetchLocation {
  final LocationRepository _repository;

  const FetchLocation(LocationRepository repository) : _repository = repository;

  Future<LocationStatus> call() async {
    return await _repository.getLocation();
  }
}
