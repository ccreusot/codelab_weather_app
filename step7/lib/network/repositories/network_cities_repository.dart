import 'package:codelab_weather_app/cities/models/city.dart';
import 'package:codelab_weather_app/cities/repositories/cities_repository.dart';
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:http/http.dart';

class NetworkCitiesRepository implements CitiesRepository {
  final NetworkService _service;

  const NetworkCitiesRepository(NetworkService service) : _service = service;

  @override
  Future<CitiesStatus> getCities() async {
    try {
      final result = await _service.getCities();
      return CitiesStatus.success(
          result.cities.entries.map((entry) => City(entry.value.name, entry.value.country, entry.value.url)).toList());
    } on ClientException catch (e) {
      return CitiesStatus.error(e.message);
    } catch (e) {
      return CitiesStatus.error("Something went wrong");
    }
  }
}
