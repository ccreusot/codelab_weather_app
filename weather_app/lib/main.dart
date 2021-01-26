import 'package:flutter/material.dart';
import 'package:weather_app/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello guys WAZZAAAP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CityList(),
    );
  }
}

class CityList extends StatefulWidget {
  @override
  _CityListState createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  List<City> cities = List.empty();
  List<City> filteredCities = List.empty();

  @override
  void initState() {
    super.initState();
    getCities().then((value) {
      setState(() {
        cities = value;
        filteredCities = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Padding(
            child: TextField(
                decoration: InputDecoration(labelText: "Enter a city", border: InputBorder.none),
                onChanged: (text) {
                  setState(() {
                    filteredCities = cities.where((city) => city.name.contains(text)).toList();
                  });
                }),
            padding: EdgeInsets.all(16)),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(filteredCities[index].name),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => CityWeatherForecastPage(filteredCities[index])));
                },
              );
            },
            itemCount: filteredCities.length,
          ),
        ),
      ]),
    ));
  }
}

/* 
      
*/
/*
TextField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Enter a search term'
  ),
);
*/

class CityWeatherForecastPage extends StatefulWidget {
  final City city;

  CityWeatherForecastPage(this.city);
  @override
  _CityWeatherForecastPageState createState() => _CityWeatherForecastPageState();
}

class _CityWeatherForecastPageState extends State<CityWeatherForecastPage> {
  CityWeatherForecast cityDetail;

  @override
  void initState() {
    super.initState();
    getCityWeatherForecast(widget.city.url).then((value) {
      setState(() {
        cityDetail = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: (cityDetail == null)
                ? CircularProgressIndicator()
                : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                      Expanded(
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Text("${widget.city.name}"),
                        ]),
                      ),
                      Stack(alignment: Alignment.center, children: [
                        Image.network(cityDetail.condition.iconUrl),
                        Text(
                          "${cityDetail.condition.temperature}",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffb74093), fontSize: 30),
                        )
                      ])
                    ]),
                    Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.network(cityDetail.tomorrowCondition.iconUrl),
                          Text(
                            "${cityDetail.tomorrowCondition.minTemp} / ${cityDetail.tomorrowCondition.maxTemp}",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffb74093), fontSize: 30),
                          )
                        ],
                      )
                    ]),
                  ])));
  }
}
/*
Divider(
			color: Colors.black,
			height: 50,
		  )),
      */
