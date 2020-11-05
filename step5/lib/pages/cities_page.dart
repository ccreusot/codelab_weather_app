import 'package:codelab_weather_app/models/city.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CitiesPage extends StatefulWidget {
  @override
  _CitiesPageState createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  List<City> _cities = [];
  String _filter = "";

  @override
  void initState() {
    super.initState();
    fetchCities();
  }

  @override
  Widget build(BuildContext context) {
    final cities =
        _cities.where((element) => element.name.contains(_filter)).toList();
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
                  setState(() {
                    _filter = value;
                  });
                },
              ),
            ),
            if (_cities.isEmpty)
              Expanded(child: Center(child: CircularProgressIndicator()))
            else
              Expanded(
                child: ListView.builder(
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Flag(
                          cities[index].country.substring(0, 2),
                          width: 24,
                        ),
                        title: Text(
                            "${cities[index].name}, ${cities[index].country}"),
                        onTap: () {
                          Navigator.pop(context, cities[index]);
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
      var client = http.Client();
      http.Response response = await client
          .get("https://prevision-meteo.ch/services/json/list-cities");
      setState(() {
        CitiesConverter()
            .fromJson(convert.jsonDecode(response.body))
            .cities
            .forEach((key, value) {
          _cities.add(value);
        });
      });
    } catch (e) {
      print(e);
    }
  }
}
