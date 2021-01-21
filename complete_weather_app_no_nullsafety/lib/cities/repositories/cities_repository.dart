import 'package:codelab_weather_app/cities/models/city.dart';

abstract class CitiesRepository {
  Future<CitiesStatus> getCities();
}
