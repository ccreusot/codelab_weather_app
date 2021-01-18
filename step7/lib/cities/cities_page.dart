import 'package:codelab_weather_app/cities/usecases/fetch_cities.dart';
import 'package:codelab_weather_app/cities/models/city.dart';
import 'package:codelab_weather_app/cities/usecases/search_cities.dart';
import 'package:codelab_weather_app/cities/usecases/add_city_to_watch.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';

part 'cities_page.freezed.dart';

@freezed
abstract class CitiesPageState with _$CitiesPageState {
  const factory CitiesPageState.loading() = CitiesLoadingState;
  const factory CitiesPageState.success(List<City> cities) = CitiesSuccessState;
  const factory CitiesPageState.error([String message]) = CitiesErrorState;
  const factory CitiesPageState.cityAddedToWatchList() = CitiesAddedToWatchListState;
}

class CitiesPageViewModel with ChangeNotifier {
  final FetchCities _fetchCities;
  final SearchCities _searchCities;
  final AddCityToWatch _addCityToWatch;
  CitiesPageState _state = CitiesPageState.loading();
  List<City> _cities = List();

  CitiesPageViewModel(FetchCities fetchCities, SearchCities searchCities, AddCityToWatch addCityToWatch)
      : _fetchCities = fetchCities,
        _searchCities = searchCities,
        _addCityToWatch = addCityToWatch;

  CitiesPageState get state => _state;

  void fetchCities() {
    Future.microtask(() async {
      final result = await _fetchCities();

      if (result is CitiesSuccess) {
        _cities = result.city;
        _cities.removeWhere((element) => element.country != 'FRA');
        _state = CitiesPageState.success(_cities);
        notifyListeners();
        return;
      }

      _state = CitiesPageState.error("Aucune villes trouvées.");
      notifyListeners();
    });
  }

  void search(String city) {
    Future.microtask(() async {
      final cities = await _searchCities(_cities, city);
      _state = CitiesPageState.success(cities);
      notifyListeners();
    });
  }

  void addCityToWatchList(City city) {
    Future.microtask(() async {
      await _addCityToWatch(city);
      _state = CitiesPageState.cityAddedToWatchList();
      notifyListeners();
    });
  }
}

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
                Navigator.pop(context, true);
                return CircularProgressIndicator();
              },
            );
          }),
        ),
      ),
    );
  }
}
