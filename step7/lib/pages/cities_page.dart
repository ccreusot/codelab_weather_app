import 'package:codelab_weather_app/domain/fetch_cities.dart';
import 'package:codelab_weather_app/domain/models/city.dart';
import 'package:codelab_weather_app/domain/repositories/cities_repository.dart';
import 'package:codelab_weather_app/domain/search_cities.dart';
import 'package:codelab_weather_app/network/network_service.dart';
import 'package:codelab_weather_app/network/repositories/network_cities_repository.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

class CitiesPage extends StatefulWidget {
  @override
  _CitiesPageState createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  CitiesRepository _repository =
      NetworkCitiesRepository(NetworkService.create());
  FetchCities _fetchCities;
  SearchCities _searchCities;

  List<City> _cities = [];
  List<City> _citiesFiltered = [];

  @override
  void initState() {
    _fetchCities = FetchCities(_repository);
    _searchCities = SearchCities();
    fetchCities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selectionner une ville'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: TextField(
                decoration: InputDecoration(labelText: 'Rechercher'),
                onChanged: (value) {
                  _searchCities(_cities, value).then((value) {
                    setState(() {
                      _citiesFiltered = value;
                    });
                  });
                },
              ),
            ),
            if (_cities.isEmpty)
              Expanded(child: Center(child: CircularProgressIndicator()))
            else
              Expanded(
                child: ListView.builder(
                    itemCount: _citiesFiltered.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Flag(
                          _citiesFiltered[index].country.substring(0, 2),
                          width: 24,
                        ),
                        title: Text(
                            "${_citiesFiltered[index].name}, ${_citiesFiltered[index].country}"),
                        onTap: () {
                          Navigator.pop(context, _citiesFiltered[index]);
                        },
                      );
                    }),
              )
          ],
        ),
      ),
    );
  }

  void fetchCities() async {
    try {
      final result = await _fetchCities();
      setState(() {
        _cities = (result as CitiesSuccess).city;
        _citiesFiltered = _cities;
      });
    } catch (e) {
      print(e);
    }
  }
}
