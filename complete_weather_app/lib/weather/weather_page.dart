import 'package:complete_weather_app/weather/components/weather_card.dart';
import 'package:complete_weather_app/weather/models/weather.dart';
import 'package:complete_weather_app/weather/viewmodels/weather_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          if (result != null && result) {
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
