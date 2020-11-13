import 'package:codelab_weather_app/domain/add_city_to_watch.dart';
import 'package:codelab_weather_app/domain/fetch_location.dart';
import 'package:codelab_weather_app/domain/fetch_weather.dart';
import 'package:codelab_weather_app/domain/fetch_weather_from_city.dart';
import 'package:codelab_weather_app/domain/fetch_weather_from_location.dart';
import 'package:codelab_weather_app/domain/load_watched_cities.dart';
import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/models/fetch_weather_option.dart';
import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:codelab_weather_app/local/repositories/local_watched_cities_repository.dart';
import 'package:codelab_weather_app/local/repositories/location_repository.dart';
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:codelab_weather_app/network/repositories/network_weather_repository.dart';
import 'package:codelab_weather_app/pages/cities_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:codelab_weather_app/domain/models/location.dart'
    as DomainLocation;
import 'package:weather_icons/weather_icons.dart';

import 'package:codelab_weather_app/pages/weather_overview_page.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage(this.title);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  SelectedWeatherLocation _selectedLocation = WeatherAroundMe();

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
          selectedLocation: _selectedLocation,
          onSelectionChange: (SelectedWeatherLocation selectedWeatherLocation) {
            setState(() {
              _selectedLocation = selectedWeatherLocation;
            });
          }),
      body: WeatherBody(
        location: _selectedLocation,
      ),
    );
  }
}

class SelectedLocationDrawer extends StatefulWidget {
  final SelectedWeatherLocation selectedLocation;
  final void Function(SelectedWeatherLocation selectedWeatherLocation)
      onSelectionChange;

  const SelectedLocationDrawer({this.selectedLocation, this.onSelectionChange});

  @override
  _SelectedLocationDrawerState createState() => _SelectedLocationDrawerState();
}

class _SelectedLocationDrawerState extends State<SelectedLocationDrawer> {
  List<City> _cities = [];

  AddCityToWatch _addCityToWatch;
  LoadWatchedCities _loadWatchedCities;
  LocalWatchedCitiesRepository _repository = LocalWatchedCitiesRepository();

  @override
  void initState() {
    _addCityToWatch = AddCityToWatch(_repository);
    _loadWatchedCities = LoadWatchedCities(_repository);

    _loadWatchedCities().then((value) {
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
          selected: (widget.selectedLocation is WeatherAroundMe),
          selectedTileColor: Colors.blue,
          leading: Icon(Icons.my_location,
              color: (widget.selectedLocation is WeatherAroundMe)
                  ? Colors.white
                  : Colors.black),
          title: Text(
            "Autour de moi",
            style: TextStyle(
              color: (widget.selectedLocation is WeatherAroundMe)
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          onTap: () {
            setState(() {
              widget.onSelectionChange(WeatherAroundMe());
            });
            Navigator.pop(context);
          },
        ),
        ..._cities.map((city) => ListTile(
              title: Text(city.name,
                  style: TextStyle(
                    color: (widget.selectedLocation is WeatherInCity &&
                            widget.selectedLocation.location() == city.url)
                        ? Colors.white
                        : Colors.black,
                  )),
              selected: (widget.selectedLocation is WeatherInCity &&
                  widget.selectedLocation.location() == city.url),
              selectedTileColor: Colors.blue,
              onTap: () {
                setState(() {
                  widget.onSelectionChange(WeatherInCity(location: city.url));
                });
                Navigator.pop(context);
              },
            )),
        ListTile(
          leading: Icon(Icons.add, color: Colors.black),
          title: Text("Ajouter une ville"),
          onTap: () async {
            final result = await Navigator.push(
                context, MaterialPageRoute(builder: (context) => CitiesPage()));
            await _addCityToWatch(result);
            final cities = await _loadWatchedCities();
            setState(() {
              _cities = cities;
            });
          },
        )
      ],
    ));
  }
}

class WeatherBody extends StatefulWidget {
  final SelectedWeatherLocation _selectedLocation;

  WeatherBody({SelectedWeatherLocation location})
      : _selectedLocation = location;

  @override
  _WeatherBodyState createState() => _WeatherBodyState();
}

class _WeatherBodyState extends State<WeatherBody> {
  final NetworkWeatherRepository _repository =
      NetworkWeatherRepository(NetworkService.create());

  FetchWeather _fetchWeather;
  Weather _weather = null;
  List<HourlyForecast> _hourlyForecast = null;

  @override
  void initState() {
    _fetchWeather = FetchWeather(FetchWeatherFromLocation(_repository),
        FetchWeatherFromCity(_repository));

    fetchWeather(widget._selectedLocation);
    super.initState();
  }

  @override
  void didUpdateWidget(WeatherBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {
      _weather = null;
    });
    fetchWeather(widget._selectedLocation);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
                                    Text(
                                      "Autour de moi",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Icon(
                                        Icons.my_location,
                                        size: 16,
                                      ),
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
                              child: Text("Today",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          Expanded(
                              child: Container(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    child: Text("Next 4 days >",
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
                                  final entry =
                                      _hourlyForecast.elementAt(index);
                                  return WeatherConditionByHour(entry: entry);
                                }),
                          ))
                    ],
                  ),
                )),
    );
  }

  void fetchWeather(SelectedWeatherLocation selectedLocation) async {
    FetchWeatherOption option = null;

    final currentHour = DateTime.now().hour;

    if (selectedLocation is WeatherAroundMe) {
      final fetchLocation = FetchLocation(LocalLocationRepository());

      final locationData = await fetchLocation();
      if (locationData is DomainLocation.LocationSuccess) {
        option = FetchWeatherOption.aroundMe(locationData.location);
      }
    } else {
      option = FetchWeatherOption.inCity(selectedLocation.location());
    }

    final weather = await _fetchWeather(option);
    setState(() {
      _weather = weather;
      _hourlyForecast = _weather.hourlyForecast.where((element) {
        final hour = Jiffy(element.hour.replaceAll("H", ":"), "h:mm").hour;
        return hour >= currentHour;
      }).toList();
    });
  }
}

class WeatherConditionByHour extends StatelessWidget {
  const WeatherConditionByHour({
    Key key,
    @required this.entry,
  }) : super(key: key);

  final HourlyForecast entry;

  @override
  Widget build(BuildContext context) {
    final currentHour = DateTime.now().hour;
    final entryHour = Jiffy(entry.hour.replaceAll("H", ":"), "h:mm").hour;
    return Card(
      color: currentHour == entryHour ? Colors.blue : Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Text(
                entry.hour,
                style: TextStyle(
                  fontSize: 9,
                  color:
                      currentHour == entryHour ? Colors.white : Colors.black45,
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Image.network(
                  entry.icon,
                  width: 18,
                )),
            Expanded(
              flex: 1,
              child: Text(
                "${entry.temperature}°",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: currentHour == entryHour
                        ? Colors.white
                        : Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WeatherCurrentConditionCard extends StatelessWidget {
  const WeatherCurrentConditionCard({
    Key key,
    @required Weather weather,
  })  : _weather = weather,
        super(key: key);

  final Weather _weather;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Card(
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          child: Column(
            children: [
              Expanded(
                  flex: 0, child: Image.network(_weather.iconUrl, width: 92)),
              Expanded(
                flex: 0,
                child: Text(
                  _weather.condition,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ),
              Expanded(
                flex: 0,
                child: Text(
                  Jiffy(_weather.date, "dd/MM/yyyy").MMMMEEEEd,
                  style: TextStyle(color: Colors.white54, fontSize: 11),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "${_weather.temperature}°",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Row(children: [
                        Expanded(
                            child: WeatherCurrentConditionSmallDetailComponent(
                          icon: WeatherIcons.strong_wind,
                          title: "Wind",
                          info: "${_weather.windSpeed} km/h",
                        )),
                        VerticalDivider(
                          width: 1,
                          thickness: 1,
                          color: Colors.white,
                        ),
                        Expanded(
                            child: WeatherCurrentConditionSmallDetailComponent(
                          icon: WeatherIcons.humidity,
                          title: "Humidity",
                          info: "${_weather.humidity}%",
                        )),
                      ]),
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child:
                                  WeatherCurrentConditionSmallDetailComponent(
                            icon: WeatherIcons.wind,
                            title: "Wind Dir",
                            info: "${_weather.windDirection}",
                          )),
                          VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: Colors.white,
                          ),
                          Expanded(
                              child:
                                  WeatherCurrentConditionSmallDetailComponent(
                            icon: WeatherIcons.barometer,
                            title: "Pressure",
                            info: "${_weather.pressure} mbar",
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherCurrentConditionSmallDetailComponent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String info;

  const WeatherCurrentConditionSmallDetailComponent(
      {Key key, this.icon, this.title, this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        flex: 3,
        child: BoxedIcon(
          icon,
          size: 18,
          color: Colors.white,
        ),
      ),
      Expanded(
        flex: 7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toUpperCase(),
              style: TextStyle(color: Colors.white54, fontSize: 9),
            ),
            SizedBox(
              height: 2,
            ),
            Text(info, style: TextStyle(color: Colors.white, fontSize: 12))
          ],
        ),
      )
    ]);
  }
}

abstract class SelectedWeatherLocation {
  String location();
}

class WeatherAroundMe implements SelectedWeatherLocation {
  String location() => null;
}

class WeatherInCity implements SelectedWeatherLocation {
  final _location;

  WeatherInCity({String location}) : _location = location;

  String location() => _location;
}
