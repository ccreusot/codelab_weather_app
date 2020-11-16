import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:codelab_weather_app/domain/models/location.dart';
import 'package:codelab_weather_app/domain/repositories/weather_repository.dart';
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:codelab_weather_app/network/models/weather.dart'
    as NetworkWeather;
import 'package:http/http.dart';
import 'package:jiffy/jiffy.dart';

class NetworkWeatherRepository implements WeatherRepository {
  final NetworkService _service;

  const NetworkWeatherRepository(NetworkService service) : _service = service;

  @override
  Future<WeatherStatus> getFromCity(String city) async {
    try {
      final NetworkWeather.Weather weather =
          await _service.getCityWeather(city);

      return _mapNetworkWeatherToDomainWeather(weather, false);
    } on ClientException catch (e) {
      return WeatherStatus.error(e.message);
    } catch (e) {
      return WeatherStatus.error("Something went wrong");
    }
  }

  @override
  Future<WeatherStatus> getFromLocation(Location location) async {
    try {
      final NetworkWeather.Weather weather =
          await _service.getLocalWeather(location.latitude, location.longitude);

      return _mapNetworkWeatherToDomainWeather(weather, true);
    } on ClientException catch (e) {
      return WeatherStatus.error(e.message);
    } catch (e) {
      return WeatherStatus.error("Something went wrong.");
    }
  }

  String _cityName(String name) {
    if (name == "NA") return "";
    return name;
  }

  String _countryName(String country) {
    if (country == "--") return "";
    return country;
  }

  WeatherSuccess _mapNetworkWeatherToDomainWeather(
      NetworkWeather.Weather weather, bool geolocalized) {
    return WeatherStatus.success(Weather(
        _cityName(weather.cityInfo.name),
        _countryName(weather.cityInfo.country),
        geolocalized,
        weather.currentCondition.date.replaceAll('.', '/'),
        weather.currentCondition.condition,
        weather.currentCondition.tmp,
        weather.currentCondition.wndSpd,
        weather.currentCondition.humidity,
        weather.currentCondition.wndDir,
        weather.currentCondition.pressure,
        weather.currentCondition.iconBig,
        weather.fcstDay0.hourlyData.entries.map((entry) {
          return HourlyForecast(
              Jiffy(entry.key.replaceAll("H", ":"), "h:mm").dateTime,
              entry.value.icon,
              entry.value.tMP2m.toInt());
        }).toList(),
        <NetworkWeather.ForecastDay>[
          weather.fcstDay1,
          weather.fcstDay2,
          weather.fcstDay3,
          weather.fcstDay4
        ]
            .map((forecast) => DailyForecast(forecast.date.replaceAll('.', '/'),
                forecast.tmax, forecast.tmin, forecast.iconBig))
            .toList()));
  }
}
