import 'package:complete_weather_app/cities/models/city.dart';
import 'package:complete_weather_app/cities/viewmodels/cities_page_viewmodel.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<CitiesPageViewModel>(context, listen: false).fetchCities();
    return Scaffold(
      appBar: AppBar(
        title: Text('Selectionner une ville'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Center(
          child: Consumer<CitiesPageViewModel>(builder: (context, viewModel, child) {
            return viewModel.state.when(
              loading: () => CircularProgressIndicator(),
              success: (List<City> cities) {
                return Column(
                  children: [
                    Expanded(
                      flex: 0,
                      child: TextField(
                        decoration: InputDecoration(labelText: 'Rechercher'),
                        onChanged: (value) {
                          viewModel.search(value);
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: cities.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Flag(
                                cities[index].country.substring(0, 2),
                                width: 24,
                              ),
                              title: Text("${cities[index].name}, ${cities[index].country}"),
                              onTap: () {
                                viewModel.addCityToWatchList(cities[index]);
                              },
                            );
                          }),
                    )
                  ],
                );
              },
              error: (String message) => Text(message),
              cityAddedToWatchList: () {
                Future.delayed(Duration(milliseconds: 250), () {
                  Navigator.pop(context, true);
                });
                return CircularProgressIndicator();
              },
            );
          }),
        ),
      ),
    );
  }
}
