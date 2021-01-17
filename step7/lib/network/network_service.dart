import 'dart:async';

import 'package:codelab_weather_app/network/models/city.dart';
import 'package:codelab_weather_app/network/models/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

abstract class NetworkService {
  Future<Weather> getLocalWeather(double latitude, double longitude);
  Future<Weather> getCityWeather(String city);
  Future<Cities> getCities();

  factory NetworkService.create() = _NetworkService;
}

class _NetworkService implements NetworkService {
  final String _baseUrl = "https://www.prevision-meteo.ch/services/json/";
  final http.Client _client = http.Client();

  @override
  Future<Cities> getCities() async {
    final response = await _client.get(_baseUrl + _LIST_CITIES_END_POINT);
    return _decodeAndParseCities(response.body);
  }

  @override
  Future<Weather> getCityWeather(String city) async {
    final response = await _client.get(_baseUrl + city);
    return _decodeAndParseWeather(response.body);
  }

  @override
  Future<Weather> getLocalWeather(double latitude, double longitude) async {
    final response = await _client.get(_baseUrl + "lat=${latitude}lng=${longitude}");
    return _decodeAndParseWeather(response.body);
  }

  static Cities _decodeAndParseCities(String jsonBody) {
    return CitiesConverter().fromJson(convert.jsonDecode(jsonBody));
  }

  static Weather _decodeAndParseWeather(String jsonBody) {
    return Weather.fromJson(convert.jsonDecode(jsonBody));
  }

  static const String _LIST_CITIES_END_POINT = "list-cities";
}
