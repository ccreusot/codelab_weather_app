import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/models/fetch_weather_option.dart';
import 'package:codelab_weather_app/domain/repositories/cities_repository.dart';
import 'package:codelab_weather_app/domain/repositories/watched_cities_repository.dart';
import 'package:codelab_weather_app/domain/usecases/add_city_to_watch.dart';
import 'package:codelab_weather_app/domain/usecases/load_watched_cities.dart';
import 'package:codelab_weather_app/pages/cities_page.dart';
import 'package:flutter/material.dart';

class SelectedLocationDrawer extends StatefulWidget {
  final FetchWeatherOption fetchWeatherOption;
  final void Function(FetchWeatherOption option) onSelectionChange;
  final AddCityToWatch _addCityToWatch;
  final LoadWatchedCities _loadWatchedCities;
  final CitiesRepository _citiesRepository;

  SelectedLocationDrawer(
      {Key key,
      @required this.fetchWeatherOption,
      this.onSelectionChange,
      @required WatchedCitiesRepository watchedCitiesRepository,
      @required CitiesRepository citiesRepository})
      : _addCityToWatch = AddCityToWatch(watchedCitiesRepository),
        _loadWatchedCities = LoadWatchedCities(watchedCitiesRepository),
        _citiesRepository = citiesRepository,
        super(key: key);

  @override
  _SelectedLocationDrawerState createState() => _SelectedLocationDrawerState();
}

class _SelectedLocationDrawerState extends State<SelectedLocationDrawer> {
  List<City> _cities = [];

  @override
  void initState() {
    widget._loadWatchedCities().then((value) {
      setState(() {
        _cities = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        ListTile(
          selected: widget.fetchWeatherOption
              .when(aroundMe: () => true, inCity: (_) => false),
          selectedTileColor: Colors.blue,
          leading: Icon(Icons.my_location,
              color: widget.fetchWeatherOption.when(
                  aroundMe: () => Colors.white, inCity: (_) => Colors.black)),
          title: Text(
            "Autour de moi",
            style: TextStyle(
              color: widget.fetchWeatherOption.when(
                  aroundMe: () => Colors.white, inCity: (_) => Colors.black),
            ),
          ),
          onTap: () {
            setState(() {
              widget.onSelectionChange(FetchWeatherOption.aroundMe());
            });
            Navigator.pop(context);
          },
        ),
        ..._cities.map((city) => ListTile(
              title: Text(city.name,
                  style: TextStyle(
                      color: widget.fetchWeatherOption.when(
                          aroundMe: () => Colors.black,
                          inCity: (cityUrl) {
                            if (cityUrl == city.url) {
                              return Colors.white;
                            }
                            return Colors.black;
                          }))),
              selected: widget.fetchWeatherOption.when(
                  aroundMe: () => false,
                  inCity: (cityUrl) => (cityUrl == city.url)),
              selectedTileColor: Colors.blue,
              onTap: () {
                setState(() {
                  widget.onSelectionChange(FetchWeatherOption.inCity(city.url));
                });
                Navigator.pop(context);
              },
            )),
        ListTile(
          leading: Icon(Icons.add, color: Colors.black),
          title: Text("Ajouter une ville"),
          onTap: () async {
            final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CitiesPage(
                          citiesRepository: widget._citiesRepository,
                        )));
            await widget._addCityToWatch(result);
            final cities = await widget._loadWatchedCities();
            setState(() {
              _cities = cities;
            });
          },
        )
      ],
    ));
  }
}
