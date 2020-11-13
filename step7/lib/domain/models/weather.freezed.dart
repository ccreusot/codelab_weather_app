// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

// ignore: unused_element
  WeatherData call(
      String cityName,
      String countryName,
      bool fromGeolocation,
      String date,
      String condition,
      int temperature,
      int windSpeed,
      int humidity,
      String windDirection,
      double pressure,
      String iconUrl,
      List<HourlyForecast> hourlyForecast,
      List<DailyForecast> dailyForecast) {
    return WeatherData(
      cityName,
      countryName,
      fromGeolocation,
      date,
      condition,
      temperature,
      windSpeed,
      humidity,
      windDirection,
      pressure,
      iconUrl,
      hourlyForecast,
      dailyForecast,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  String get cityName;
  String get countryName;
  bool get fromGeolocation;
  String get date;
  String get condition;
  int get temperature;
  int get windSpeed;
  int get humidity;
  String get windDirection;
  double get pressure;
  String get iconUrl;
  List<HourlyForecast> get hourlyForecast;
  List<DailyForecast> get dailyForecast;

  $WeatherCopyWith<Weather> get copyWith;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {String cityName,
      String countryName,
      bool fromGeolocation,
      String date,
      String condition,
      int temperature,
      int windSpeed,
      int humidity,
      String windDirection,
      double pressure,
      String iconUrl,
      List<HourlyForecast> hourlyForecast,
      List<DailyForecast> dailyForecast});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object cityName = freezed,
    Object countryName = freezed,
    Object fromGeolocation = freezed,
    Object date = freezed,
    Object condition = freezed,
    Object temperature = freezed,
    Object windSpeed = freezed,
    Object humidity = freezed,
    Object windDirection = freezed,
    Object pressure = freezed,
    Object iconUrl = freezed,
    Object hourlyForecast = freezed,
    Object dailyForecast = freezed,
  }) {
    return _then(_value.copyWith(
      cityName: cityName == freezed ? _value.cityName : cityName as String,
      countryName:
          countryName == freezed ? _value.countryName : countryName as String,
      fromGeolocation: fromGeolocation == freezed
          ? _value.fromGeolocation
          : fromGeolocation as bool,
      date: date == freezed ? _value.date : date as String,
      condition: condition == freezed ? _value.condition : condition as String,
      temperature:
          temperature == freezed ? _value.temperature : temperature as int,
      windSpeed: windSpeed == freezed ? _value.windSpeed : windSpeed as int,
      humidity: humidity == freezed ? _value.humidity : humidity as int,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection as String,
      pressure: pressure == freezed ? _value.pressure : pressure as double,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      hourlyForecast: hourlyForecast == freezed
          ? _value.hourlyForecast
          : hourlyForecast as List<HourlyForecast>,
      dailyForecast: dailyForecast == freezed
          ? _value.dailyForecast
          : dailyForecast as List<DailyForecast>,
    ));
  }
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cityName,
      String countryName,
      bool fromGeolocation,
      String date,
      String condition,
      int temperature,
      int windSpeed,
      int humidity,
      String windDirection,
      double pressure,
      String iconUrl,
      List<HourlyForecast> hourlyForecast,
      List<DailyForecast> dailyForecast});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(
      WeatherData _value, $Res Function(WeatherData) _then)
      : super(_value, (v) => _then(v as WeatherData));

  @override
  WeatherData get _value => super._value as WeatherData;

  @override
  $Res call({
    Object cityName = freezed,
    Object countryName = freezed,
    Object fromGeolocation = freezed,
    Object date = freezed,
    Object condition = freezed,
    Object temperature = freezed,
    Object windSpeed = freezed,
    Object humidity = freezed,
    Object windDirection = freezed,
    Object pressure = freezed,
    Object iconUrl = freezed,
    Object hourlyForecast = freezed,
    Object dailyForecast = freezed,
  }) {
    return _then(WeatherData(
      cityName == freezed ? _value.cityName : cityName as String,
      countryName == freezed ? _value.countryName : countryName as String,
      fromGeolocation == freezed
          ? _value.fromGeolocation
          : fromGeolocation as bool,
      date == freezed ? _value.date : date as String,
      condition == freezed ? _value.condition : condition as String,
      temperature == freezed ? _value.temperature : temperature as int,
      windSpeed == freezed ? _value.windSpeed : windSpeed as int,
      humidity == freezed ? _value.humidity : humidity as int,
      windDirection == freezed ? _value.windDirection : windDirection as String,
      pressure == freezed ? _value.pressure : pressure as double,
      iconUrl == freezed ? _value.iconUrl : iconUrl as String,
      hourlyForecast == freezed
          ? _value.hourlyForecast
          : hourlyForecast as List<HourlyForecast>,
      dailyForecast == freezed
          ? _value.dailyForecast
          : dailyForecast as List<DailyForecast>,
    ));
  }
}

/// @nodoc
class _$WeatherData implements WeatherData {
  const _$WeatherData(
      this.cityName,
      this.countryName,
      this.fromGeolocation,
      this.date,
      this.condition,
      this.temperature,
      this.windSpeed,
      this.humidity,
      this.windDirection,
      this.pressure,
      this.iconUrl,
      this.hourlyForecast,
      this.dailyForecast)
      : assert(cityName != null),
        assert(countryName != null),
        assert(fromGeolocation != null),
        assert(date != null),
        assert(condition != null),
        assert(temperature != null),
        assert(windSpeed != null),
        assert(humidity != null),
        assert(windDirection != null),
        assert(pressure != null),
        assert(iconUrl != null),
        assert(hourlyForecast != null),
        assert(dailyForecast != null);

  @override
  final String cityName;
  @override
  final String countryName;
  @override
  final bool fromGeolocation;
  @override
  final String date;
  @override
  final String condition;
  @override
  final int temperature;
  @override
  final int windSpeed;
  @override
  final int humidity;
  @override
  final String windDirection;
  @override
  final double pressure;
  @override
  final String iconUrl;
  @override
  final List<HourlyForecast> hourlyForecast;
  @override
  final List<DailyForecast> dailyForecast;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, countryName: $countryName, fromGeolocation: $fromGeolocation, date: $date, condition: $condition, temperature: $temperature, windSpeed: $windSpeed, humidity: $humidity, windDirection: $windDirection, pressure: $pressure, iconUrl: $iconUrl, hourlyForecast: $hourlyForecast, dailyForecast: $dailyForecast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherData &&
            (identical(other.cityName, cityName) ||
                const DeepCollectionEquality()
                    .equals(other.cityName, cityName)) &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)) &&
            (identical(other.fromGeolocation, fromGeolocation) ||
                const DeepCollectionEquality()
                    .equals(other.fromGeolocation, fromGeolocation)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)) &&
            (identical(other.windSpeed, windSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.windSpeed, windSpeed)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.windDirection, windDirection) ||
                const DeepCollectionEquality()
                    .equals(other.windDirection, windDirection)) &&
            (identical(other.pressure, pressure) ||
                const DeepCollectionEquality()
                    .equals(other.pressure, pressure)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality()
                    .equals(other.iconUrl, iconUrl)) &&
            (identical(other.hourlyForecast, hourlyForecast) ||
                const DeepCollectionEquality()
                    .equals(other.hourlyForecast, hourlyForecast)) &&
            (identical(other.dailyForecast, dailyForecast) ||
                const DeepCollectionEquality()
                    .equals(other.dailyForecast, dailyForecast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityName) ^
      const DeepCollectionEquality().hash(countryName) ^
      const DeepCollectionEquality().hash(fromGeolocation) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(windSpeed) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(windDirection) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(iconUrl) ^
      const DeepCollectionEquality().hash(hourlyForecast) ^
      const DeepCollectionEquality().hash(dailyForecast);

  @override
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      _$WeatherDataCopyWithImpl<WeatherData>(this, _$identity);
}

abstract class WeatherData implements Weather {
  const factory WeatherData(
      String cityName,
      String countryName,
      bool fromGeolocation,
      String date,
      String condition,
      int temperature,
      int windSpeed,
      int humidity,
      String windDirection,
      double pressure,
      String iconUrl,
      List<HourlyForecast> hourlyForecast,
      List<DailyForecast> dailyForecast) = _$WeatherData;

  @override
  String get cityName;
  @override
  String get countryName;
  @override
  bool get fromGeolocation;
  @override
  String get date;
  @override
  String get condition;
  @override
  int get temperature;
  @override
  int get windSpeed;
  @override
  int get humidity;
  @override
  String get windDirection;
  @override
  double get pressure;
  @override
  String get iconUrl;
  @override
  List<HourlyForecast> get hourlyForecast;
  @override
  List<DailyForecast> get dailyForecast;
  @override
  $WeatherDataCopyWith<WeatherData> get copyWith;
}

/// @nodoc
class _$HourlyForecastTearOff {
  const _$HourlyForecastTearOff();

// ignore: unused_element
  HourlyForecastData call(String hour, String icon, int temperature) {
    return HourlyForecastData(
      hour,
      icon,
      temperature,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HourlyForecast = _$HourlyForecastTearOff();

/// @nodoc
mixin _$HourlyForecast {
  String get hour;
  String get icon;
  int get temperature;

  $HourlyForecastCopyWith<HourlyForecast> get copyWith;
}

/// @nodoc
abstract class $HourlyForecastCopyWith<$Res> {
  factory $HourlyForecastCopyWith(
          HourlyForecast value, $Res Function(HourlyForecast) then) =
      _$HourlyForecastCopyWithImpl<$Res>;
  $Res call({String hour, String icon, int temperature});
}

/// @nodoc
class _$HourlyForecastCopyWithImpl<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  _$HourlyForecastCopyWithImpl(this._value, this._then);

  final HourlyForecast _value;
  // ignore: unused_field
  final $Res Function(HourlyForecast) _then;

  @override
  $Res call({
    Object hour = freezed,
    Object icon = freezed,
    Object temperature = freezed,
  }) {
    return _then(_value.copyWith(
      hour: hour == freezed ? _value.hour : hour as String,
      icon: icon == freezed ? _value.icon : icon as String,
      temperature:
          temperature == freezed ? _value.temperature : temperature as int,
    ));
  }
}

/// @nodoc
abstract class $HourlyForecastDataCopyWith<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  factory $HourlyForecastDataCopyWith(
          HourlyForecastData value, $Res Function(HourlyForecastData) then) =
      _$HourlyForecastDataCopyWithImpl<$Res>;
  @override
  $Res call({String hour, String icon, int temperature});
}

/// @nodoc
class _$HourlyForecastDataCopyWithImpl<$Res>
    extends _$HourlyForecastCopyWithImpl<$Res>
    implements $HourlyForecastDataCopyWith<$Res> {
  _$HourlyForecastDataCopyWithImpl(
      HourlyForecastData _value, $Res Function(HourlyForecastData) _then)
      : super(_value, (v) => _then(v as HourlyForecastData));

  @override
  HourlyForecastData get _value => super._value as HourlyForecastData;

  @override
  $Res call({
    Object hour = freezed,
    Object icon = freezed,
    Object temperature = freezed,
  }) {
    return _then(HourlyForecastData(
      hour == freezed ? _value.hour : hour as String,
      icon == freezed ? _value.icon : icon as String,
      temperature == freezed ? _value.temperature : temperature as int,
    ));
  }
}

/// @nodoc
class _$HourlyForecastData implements HourlyForecastData {
  const _$HourlyForecastData(this.hour, this.icon, this.temperature)
      : assert(hour != null),
        assert(icon != null),
        assert(temperature != null);

  @override
  final String hour;
  @override
  final String icon;
  @override
  final int temperature;

  @override
  String toString() {
    return 'HourlyForecast(hour: $hour, icon: $icon, temperature: $temperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HourlyForecastData &&
            (identical(other.hour, hour) ||
                const DeepCollectionEquality().equals(other.hour, hour)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality()
                    .equals(other.temperature, temperature)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hour) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(temperature);

  @override
  $HourlyForecastDataCopyWith<HourlyForecastData> get copyWith =>
      _$HourlyForecastDataCopyWithImpl<HourlyForecastData>(this, _$identity);
}

abstract class HourlyForecastData implements HourlyForecast {
  const factory HourlyForecastData(String hour, String icon, int temperature) =
      _$HourlyForecastData;

  @override
  String get hour;
  @override
  String get icon;
  @override
  int get temperature;
  @override
  $HourlyForecastDataCopyWith<HourlyForecastData> get copyWith;
}

/// @nodoc
class _$DailyForecastTearOff {
  const _$DailyForecastTearOff();

// ignore: unused_element
  DailyForecastData call(
      String date, int temperatureMax, int temperatureMin, String iconUrl) {
    return DailyForecastData(
      date,
      temperatureMax,
      temperatureMin,
      iconUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DailyForecast = _$DailyForecastTearOff();

/// @nodoc
mixin _$DailyForecast {
  String get date;
  int get temperatureMax;
  int get temperatureMin;
  String get iconUrl;

  $DailyForecastCopyWith<DailyForecast> get copyWith;
}

/// @nodoc
abstract class $DailyForecastCopyWith<$Res> {
  factory $DailyForecastCopyWith(
          DailyForecast value, $Res Function(DailyForecast) then) =
      _$DailyForecastCopyWithImpl<$Res>;
  $Res call(
      {String date, int temperatureMax, int temperatureMin, String iconUrl});
}

/// @nodoc
class _$DailyForecastCopyWithImpl<$Res>
    implements $DailyForecastCopyWith<$Res> {
  _$DailyForecastCopyWithImpl(this._value, this._then);

  final DailyForecast _value;
  // ignore: unused_field
  final $Res Function(DailyForecast) _then;

  @override
  $Res call({
    Object date = freezed,
    Object temperatureMax = freezed,
    Object temperatureMin = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      temperatureMax: temperatureMax == freezed
          ? _value.temperatureMax
          : temperatureMax as int,
      temperatureMin: temperatureMin == freezed
          ? _value.temperatureMin
          : temperatureMin as int,
      iconUrl: iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

/// @nodoc
abstract class $DailyForecastDataCopyWith<$Res>
    implements $DailyForecastCopyWith<$Res> {
  factory $DailyForecastDataCopyWith(
          DailyForecastData value, $Res Function(DailyForecastData) then) =
      _$DailyForecastDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date, int temperatureMax, int temperatureMin, String iconUrl});
}

/// @nodoc
class _$DailyForecastDataCopyWithImpl<$Res>
    extends _$DailyForecastCopyWithImpl<$Res>
    implements $DailyForecastDataCopyWith<$Res> {
  _$DailyForecastDataCopyWithImpl(
      DailyForecastData _value, $Res Function(DailyForecastData) _then)
      : super(_value, (v) => _then(v as DailyForecastData));

  @override
  DailyForecastData get _value => super._value as DailyForecastData;

  @override
  $Res call({
    Object date = freezed,
    Object temperatureMax = freezed,
    Object temperatureMin = freezed,
    Object iconUrl = freezed,
  }) {
    return _then(DailyForecastData(
      date == freezed ? _value.date : date as String,
      temperatureMax == freezed ? _value.temperatureMax : temperatureMax as int,
      temperatureMin == freezed ? _value.temperatureMin : temperatureMin as int,
      iconUrl == freezed ? _value.iconUrl : iconUrl as String,
    ));
  }
}

/// @nodoc
class _$DailyForecastData implements DailyForecastData {
  const _$DailyForecastData(
      this.date, this.temperatureMax, this.temperatureMin, this.iconUrl)
      : assert(date != null),
        assert(temperatureMax != null),
        assert(temperatureMin != null),
        assert(iconUrl != null);

  @override
  final String date;
  @override
  final int temperatureMax;
  @override
  final int temperatureMin;
  @override
  final String iconUrl;

  @override
  String toString() {
    return 'DailyForecast(date: $date, temperatureMax: $temperatureMax, temperatureMin: $temperatureMin, iconUrl: $iconUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DailyForecastData &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.temperatureMax, temperatureMax) ||
                const DeepCollectionEquality()
                    .equals(other.temperatureMax, temperatureMax)) &&
            (identical(other.temperatureMin, temperatureMin) ||
                const DeepCollectionEquality()
                    .equals(other.temperatureMin, temperatureMin)) &&
            (identical(other.iconUrl, iconUrl) ||
                const DeepCollectionEquality().equals(other.iconUrl, iconUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(temperatureMax) ^
      const DeepCollectionEquality().hash(temperatureMin) ^
      const DeepCollectionEquality().hash(iconUrl);

  @override
  $DailyForecastDataCopyWith<DailyForecastData> get copyWith =>
      _$DailyForecastDataCopyWithImpl<DailyForecastData>(this, _$identity);
}

abstract class DailyForecastData implements DailyForecast {
  const factory DailyForecastData(
          String date, int temperatureMax, int temperatureMin, String iconUrl) =
      _$DailyForecastData;

  @override
  String get date;
  @override
  int get temperatureMax;
  @override
  int get temperatureMin;
  @override
  String get iconUrl;
  @override
  $DailyForecastDataCopyWith<DailyForecastData> get copyWith;
}

/// @nodoc
class _$WeatherStatusTearOff {
  const _$WeatherStatusTearOff();

// ignore: unused_element
  WeatherSuccess success(Weather weather) {
    return WeatherSuccess(
      weather,
    );
  }

// ignore: unused_element
  WeatherError error([String message]) {
    return WeatherError(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherStatus = _$WeatherStatusTearOff();

/// @nodoc
mixin _$WeatherStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(Weather weather),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(Weather weather),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(WeatherSuccess value),
    @required Result error(WeatherError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(WeatherSuccess value),
    Result error(WeatherError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WeatherStatusCopyWith<$Res> {
  factory $WeatherStatusCopyWith(
          WeatherStatus value, $Res Function(WeatherStatus) then) =
      _$WeatherStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStatusCopyWithImpl<$Res>
    implements $WeatherStatusCopyWith<$Res> {
  _$WeatherStatusCopyWithImpl(this._value, this._then);

  final WeatherStatus _value;
  // ignore: unused_field
  final $Res Function(WeatherStatus) _then;
}

/// @nodoc
abstract class $WeatherSuccessCopyWith<$Res> {
  factory $WeatherSuccessCopyWith(
          WeatherSuccess value, $Res Function(WeatherSuccess) then) =
      _$WeatherSuccessCopyWithImpl<$Res>;
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$WeatherSuccessCopyWithImpl<$Res>
    extends _$WeatherStatusCopyWithImpl<$Res>
    implements $WeatherSuccessCopyWith<$Res> {
  _$WeatherSuccessCopyWithImpl(
      WeatherSuccess _value, $Res Function(WeatherSuccess) _then)
      : super(_value, (v) => _then(v as WeatherSuccess));

  @override
  WeatherSuccess get _value => super._value as WeatherSuccess;

  @override
  $Res call({
    Object weather = freezed,
  }) {
    return _then(WeatherSuccess(
      weather == freezed ? _value.weather : weather as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    if (_value.weather == null) {
      return null;
    }
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc
class _$WeatherSuccess implements WeatherSuccess {
  const _$WeatherSuccess(this.weather) : assert(weather != null);

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherStatus.success(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherSuccess &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weather);

  @override
  $WeatherSuccessCopyWith<WeatherSuccess> get copyWith =>
      _$WeatherSuccessCopyWithImpl<WeatherSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(Weather weather),
    @required Result error(String message),
  }) {
    assert(success != null);
    assert(error != null);
    return success(weather);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(Weather weather),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(WeatherSuccess value),
    @required Result error(WeatherError value),
  }) {
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(WeatherSuccess value),
    Result error(WeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WeatherSuccess implements WeatherStatus {
  const factory WeatherSuccess(Weather weather) = _$WeatherSuccess;

  Weather get weather;
  $WeatherSuccessCopyWith<WeatherSuccess> get copyWith;
}

/// @nodoc
abstract class $WeatherErrorCopyWith<$Res> {
  factory $WeatherErrorCopyWith(
          WeatherError value, $Res Function(WeatherError) then) =
      _$WeatherErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$WeatherErrorCopyWithImpl<$Res> extends _$WeatherStatusCopyWithImpl<$Res>
    implements $WeatherErrorCopyWith<$Res> {
  _$WeatherErrorCopyWithImpl(
      WeatherError _value, $Res Function(WeatherError) _then)
      : super(_value, (v) => _then(v as WeatherError));

  @override
  WeatherError get _value => super._value as WeatherError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(WeatherError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$WeatherError implements WeatherError {
  const _$WeatherError([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $WeatherErrorCopyWith<WeatherError> get copyWith =>
      _$WeatherErrorCopyWithImpl<WeatherError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(Weather weather),
    @required Result error(String message),
  }) {
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(Weather weather),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(WeatherSuccess value),
    @required Result error(WeatherError value),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(WeatherSuccess value),
    Result error(WeatherError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherError implements WeatherStatus {
  const factory WeatherError([String message]) = _$WeatherError;

  String get message;
  $WeatherErrorCopyWith<WeatherError> get copyWith;
}
