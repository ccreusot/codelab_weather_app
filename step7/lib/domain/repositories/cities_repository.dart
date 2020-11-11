import 'package:codelab_weather_app/domain/models/city.dart';

abstract class CitiesRepository {
  Future<CitiesStatus> getCities();
}
