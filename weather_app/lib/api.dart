import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

//ar _list = _results.values.toList();

//usrMap.forEach((k,v) => print('${k}: ${v}'));

// "https://prevision-meteo.ch/services/json/list-cities"
const String weatherPartnerUrl = "https://www.prevision-meteo.ch/services/json/";

Future<List<City>> getCities() async {
  var response = await http.get(Uri.parse(weatherPartnerUrl + "list-cities"));

  if (response.statusCode == 200) {
    var result = convert.jsonDecode(response.body);
    var cities = result.values.toList();
    List<City> filtered = cities
        .map<City>((city) => City(city["name"], city["country"], city["url"]))
        .where((city) => city.country == "FRA")
        .toList();
    print("filtered cities  $filtered");
    return filtered;
  } else {
    print("Request error with status code: ${response.statusCode}");
  }
  return List.empty();
}

class City {
  final String name;
  final String country;
  final String url;

  const City(this.name, this.country, this.url);
}

Future<CityWeatherForecast> getCityWeatherForecast(String cityCode) async {
  var response = await http.get(Uri.parse(weatherPartnerUrl + cityCode));

  if (response.statusCode == 200) {
    var result = convert.jsonDecode(response.body);
    return CityWeatherForecast(
        CurrentCondition(result["current_condition"]["condition"], result["current_condition"]["tmp"],
            result["current_condition"]["icon_big"]),
        FutureCondition(result["fcst_day_1"]["condition"], result["fcst_day_1"]["tmin"], result["fcst_day_1"]["tmax"],
            result["fcst_day_1"]["icon_big"]));
  } else {
    print("Request error with status code: ${response.statusCode}");
  }
  return null;
}

class CityWeatherForecast {
  final CurrentCondition condition;
  final FutureCondition tomorrowCondition;

  const CityWeatherForecast(this.condition, this.tomorrowCondition);
}

class CurrentCondition {
  final String condition;
  final int temperature;
  final String iconUrl;

  const CurrentCondition(this.condition, this.temperature, this.iconUrl);
}

class FutureCondition {
  final String condition;
  final int minTemp;
  final int maxTemp;
  final String iconUrl;

  const FutureCondition(this.condition, this.minTemp, this.maxTemp, this.iconUrl);
}
