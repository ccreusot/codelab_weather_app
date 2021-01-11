      import 'package:codelab_weather_app/domain/repositories/cities_repository.dart';
import 'package:codelab_weather_app/domain/repositories/location_repository.dart';
import 'package:codelab_weather_app/domain/repositories/watched_cities_repository.dart';
import 'package:codelab_weather_app/domain/repositories/weather_repository.dart';
import 'package:codelab_weather_app/domain/usecases/fetch_hourly_forecast_by_hour.dart';
import 'package:codelab_weather_app/domain/usecases/fetch_location.dart';
import 'package:codelab_weather_app/domain/usecases/fetch_weather.dart';
import 'package:codelab_weather_app/domain/usecases/fetch_weather_from_city.dart';
import 'package:codelab_weather_app/domain/usecases/fetch_weather_from_location.dart';
import 'package:codelab_weather_app/domain/models/fetch_weather_option.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:codelab_weather_app/local/repositories/location_repository.dart';
import 'package:codelab_weather_app/pages/components/selected_location_drawer.dart';
import 'package:codelab_weather_app/pages/components/weather_condition_by_hour.dart';
import 'package:codelab_weather_app/pages/components/weather_current_condition_card.dart';
import 'package:flutter/material.dart';
import 'package:codelab_weather_app/domain/models/location.dart'
    as DomainLocation;

import 'package:codelab_weather_app/pages/weather_overview_page.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  final String title;
  final WeatherRepository _weatherRepository;
  final CitiesRepository _citiesRepository;
  final WatchedCitiesRepository _watchedCityRepository;
  final LocationRepository _locationRepository;

  HomePage(
      {Key key,
      this.title,
      @required WeatherRepository weatherRepository,
      @required CitiesRepository citiesRepository,
      @required WatchedCitiesRepository watchedCitiesRepository,
      @required LocationRepository locationRepository})
      : _weatherRepository = weatherRepository,
        _citiesRepository = citiesRepository,
        _watchedCityRepository = watchedCitiesRepository,
        _locationRepository = locationRepository,
        super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  FetchWeatherOption _selectedOption = FetchWeatherOption.aroundMe();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        titleSpacing: 0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
      ),
      drawer: SelectedLocationDrawer(
        fetchWeatherOption: _selectedOption,
        onSelectionChange: (FetchWeatherOption option) {
          setState(() {
            _selectedOption = option;
          });
        },
        watchedCitiesRepository: widget._watchedCityRepository,
        citiesRepository: widget._citiesRepository,
      ),
      body: WeatherBody(
        option: _selectedOption,
        weatherRepository: widget._weatherRepository,
        locationRepository: widget._locationRepository,
      ),
    );
  }
}

class WeatherBody extends StatefulWidget {
  final FetchWeatherOption _selectedOption;
  final FetchWeather _fetchWeather;
  final FetchHourlyForecastByHour _fetchHourlyForecastByHour;

  WeatherBody(
      {Key key,
      @required FetchWeatherOption option,
      @required WeatherRepository weatherRepository,
      @required LocationRepository locationRepository})
      : _selectedOption = option,
        _fetchWeather = FetchWeather(
            FetchLocation(locationRepository),
            FetchWeatherFromLocation(weatherRepository),
            FetchWeatherFromCity(weatherRepository)),
        _fetchHourlyForecastByHour = FetchHourlyForecastByHour(),
        super(key: key);

  @override
  _WeatherBodyState createState() => _WeatherBodyState();
}

class _WeatherBodyState extends State<WeatherBody> {
  Weather _weather = null;
  List<HourlyForecast> _hourlyForecast = null;

  @override
  void initState() {
    fetchWeather(widget._selectedOption);
    super.initState();
  }

  @override
  void didUpdateWidget(WeatherBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _weather = null;
    });
    fetchWeather(widget._selectedOption);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: (_weather == null)
            ? CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            left: 8, right: 16.0, bottom: 8.0),
                        alignment: Alignment.centerLeft,
                        child: (_weather.fromGeolocation)
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(
                                      Icons.my_location,
                                      size: 16,
                                    ),
                                  ),
                                  Text(
                                    "Autour de moi",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            : Row(
                                children: [
                                  Text(
                                    "${_weather.cityName}, ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(_weather.countryName,
                                      style: TextStyle(color: Colors.black54))
                                ],
                              )),
                    WeatherCurrentConditionCard(weather: _weather),
                    Row(
                      children: [
                        Expanded(
                            child: Text("Aujourd'hui",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        Expanded(
                            child: Container(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  child: Text("4 prochains jours >",
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                WeatherOverviewPage(
                                                    weather: _weather)));
                                  },
                                )))
                      ],
                    ),
                    SizedBox(
                        height: 96.0,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _hourlyForecast.length,
                              itemBuilder: (BuildContext context, int index) {
                                final entry = _hourlyForecast.elementAt(index);
                                return WeatherConditionByHour(entry: entry);
                              }),
                        ))
                  ],
                ),
              ));
  }

  void fetchWeather(FetchWeatherOption selectedOption) async {
    final currentHour = DateTime.now().hour;

    final weather = await widget._fetchWeather(selectedOption);
    final hourlyForecast = await widget._fetchHourlyForecastByHour(
        weather.hourlyForecast, currentHour);
    setState(() {
      _weather = weather;
      _hourlyForecast = hourlyForecast;
    });
  }
}
