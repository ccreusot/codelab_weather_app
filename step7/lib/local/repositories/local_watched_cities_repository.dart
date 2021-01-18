import 'package:codelab_weather_app/cities/models/city.dart';
import 'package:codelab_weather_app/cities/repositories/watched_cities_repository.dart';
import 'package:hive/hive.dart';

class LocalWatchedCitiesRepository implements WatchedCitiesRepository {
  LocalWatchedCitiesRepository();

  @override
  Future<void> addCity(City city) async {
    await initHive();
    await Hive.box<_City>("selected_cities").add(_City()
      ..name = city.name
      ..country = city.country
      ..url = city.url);
  }

  @override
  Future<List<City>> loadCities() async {
    await initHive();
    var cities = <City>[];
    await Hive.box<_City>("selected_cities").values.forEach((element) {
      cities.add(City(element.name, element.country, element.url));
    });
    return cities;
  }

  void initHive() async {
    if (!Hive.isAdapterRegistered(0)) await Hive.registerAdapter(_CityAdapter());
    if (!Hive.isBoxOpen("selected_cities")) await Hive.openBox<_City>('selected_cities');
  }
}

class _City extends HiveObject {
  String name;
  String country;
  String url;
}

class _CityAdapter extends TypeAdapter<_City> {
  @override
  _City read(BinaryReader reader) {
    return _City()
      ..name = reader.read()
      ..country = reader.read()
      ..url = reader.read();
  }

  @override
  final typeId = 0;

  @override
  void write(BinaryWriter writer, _City obj) {
    writer.write(obj.name);
    writer.write(obj.country);
    writer.write(obj.url);
  }
}
