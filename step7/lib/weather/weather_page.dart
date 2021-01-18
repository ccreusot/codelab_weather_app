import 'package:codelab_weather_app/weather/models/fetch_weather_option.dart';
import 'package:codelab_weather_app/weather/models/weather.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:codelab_weather_app/weather/usecases/fetch_weather.dart';
import 'package:codelab_weather_app/cities/usecases/load_watched_cities.dart';

part 'weather_page.freezed.dart';

@freezed
abstract class WeatherPageState with _$WeatherPageState {
  const factory WeatherPageState.loading() = WeatherLoadingState;
  const factory WeatherPageState.success(List<Weather> weathers) = WeatherSuccessState;
  const factory WeatherPageState.error([String message]) = WeatherErrorState;
}

class WeatherPageViewModel with ChangeNotifier {
  final FetchWeather _fetchWeatherUseCase;
  final LoadWatchedCities _loadWatchedCitites;
  WeatherPageState _state = WeatherPageState.loading();

  WeatherPageViewModel(FetchWeather fetchWeatherUseCase, LoadWatchedCities loadWatchedCities)
      : _fetchWeatherUseCase = fetchWeatherUseCase,
        _loadWatchedCitites = loadWatchedCities;

  WeatherPageState get state => _state;

  void fetchWeather() {
    Future.microtask(() async {
      _state = WeatherPageState.loading();
      notifyListeners();

      final localWeather = await _fetchWeatherUseCase(FetchWeatherOption.aroundMe());
      final cities = await _loadWatchedCitites();
      print(cities);
      final List<Weather> weathers = [localWeather];
      for (var city in cities) {
        final weather = await _fetchWeatherUseCase(FetchWeatherOption.inCity(city.url));
        weathers.add(weather);
      }
      weathers.removeWhere((element) => element == null);
      print(weathers);
      if (weathers.isEmpty) {
        _state = WeatherPageState.error("Aucune données météo trouvé");
        notifyListeners();
        return;
      }

      _state = WeatherPageState.success(weathers);
      notifyListeners();
    });
  }
}

class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard(this.weather);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(weather.iconUrl),
            )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(weather.fromGeolocation ? "Autour de moi" : weather.cityName),
                  Text(weather.condition),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${weather.temperature}°C",
                    style: TextStyle(fontSize: 32.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<WeatherPageViewModel>(context, listen: false).fetchWeather();
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/add');
          if (result) {
            Provider.of<WeatherPageViewModel>(context, listen: false).fetchWeather();
          }
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Container(
          child: Consumer<WeatherPageViewModel>(builder: (context, viewModel, child) {
            return viewModel.state.when(loading: () {
              return Center(
                child: CircularProgressIndicator(),
              );
            }, success: (List<Weather> weathers) {
              return ListView.builder(
                  itemCount: weathers.length,
                  padding: EdgeInsets.all(8.0),
                  itemBuilder: (context, index) {
                    return WeatherCard(weathers.elementAt(index));
                  });
            }, error: (String message) {
              return Center(
                child: Text(message),
              );
            });
          }),
        ),
      ),
    );
  }
}
