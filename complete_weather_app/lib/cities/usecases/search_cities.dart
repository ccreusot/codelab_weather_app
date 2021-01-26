import 'package:complete_weather_app/cities/models/city.dart';

class SearchCities {
  Future<List<City>> call(List<City> cities, String name) async {
    return cities.where((city) => city.name.contains(name)).toList();
  }
}
