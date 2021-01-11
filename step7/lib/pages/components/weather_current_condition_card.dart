import 'package:codelab_weather_app/domain/models/weather.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:weather_icons/weather_icons.dart';

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
                          title: "Vitesse du vent",
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
                          title: "Humidité",
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
                            title: "Direction du vent",
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
                            title: "Pression",
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
