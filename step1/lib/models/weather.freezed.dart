// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return WeatherData.fromJson(json);
}

class _$WeatherTearOff {
  const _$WeatherTearOff();

// ignore: unused_element
  WeatherData call(CityInfo cityInfo, ForecastInfo forecastInfo,
      CurrentCondition currentCondition) {
    return WeatherData(
      cityInfo,
      forecastInfo,
      currentCondition,
    );
  }
}

// ignore: unused_element
const $Weather = _$WeatherTearOff();

mixin _$Weather {
  CityInfo get cityInfo;
  ForecastInfo get forecastInfo;
  CurrentCondition get currentCondition;

  Map<String, dynamic> toJson();
  $WeatherCopyWith<Weather> get copyWith;
}

abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {CityInfo cityInfo,
      ForecastInfo forecastInfo,
      CurrentCondition currentCondition});

  $CityInfoCopyWith<$Res> get cityInfo;
  $ForecastInfoCopyWith<$Res> get forecastInfo;
  $CurrentConditionCopyWith<$Res> get currentCondition;
}

class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object cityInfo = freezed,
    Object forecastInfo = freezed,
    Object currentCondition = freezed,
  }) {
    return _then(_value.copyWith(
      cityInfo: cityInfo == freezed ? _value.cityInfo : cityInfo as CityInfo,
      forecastInfo: forecastInfo == freezed
          ? _value.forecastInfo
          : forecastInfo as ForecastInfo,
      currentCondition: currentCondition == freezed
          ? _value.currentCondition
          : currentCondition as CurrentCondition,
    ));
  }

  @override
  $CityInfoCopyWith<$Res> get cityInfo {
    if (_value.cityInfo == null) {
      return null;
    }
    return $CityInfoCopyWith<$Res>(_value.cityInfo, (value) {
      return _then(_value.copyWith(cityInfo: value));
    });
  }

  @override
  $ForecastInfoCopyWith<$Res> get forecastInfo {
    if (_value.forecastInfo == null) {
      return null;
    }
    return $ForecastInfoCopyWith<$Res>(_value.forecastInfo, (value) {
      return _then(_value.copyWith(forecastInfo: value));
    });
  }

  @override
  $CurrentConditionCopyWith<$Res> get currentCondition {
    if (_value.currentCondition == null) {
      return null;
    }
    return $CurrentConditionCopyWith<$Res>(_value.currentCondition, (value) {
      return _then(_value.copyWith(currentCondition: value));
    });
  }
}

abstract class $WeatherDataCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {CityInfo cityInfo,
      ForecastInfo forecastInfo,
      CurrentCondition currentCondition});

  @override
  $CityInfoCopyWith<$Res> get cityInfo;
  @override
  $ForecastInfoCopyWith<$Res> get forecastInfo;
  @override
  $CurrentConditionCopyWith<$Res> get currentCondition;
}

class _$WeatherDataCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(
      WeatherData _value, $Res Function(WeatherData) _then)
      : super(_value, (v) => _then(v as WeatherData));

  @override
  WeatherData get _value => super._value as WeatherData;

  @override
  $Res call({
    Object cityInfo = freezed,
    Object forecastInfo = freezed,
    Object currentCondition = freezed,
  }) {
    return _then(WeatherData(
      cityInfo == freezed ? _value.cityInfo : cityInfo as CityInfo,
      forecastInfo == freezed
          ? _value.forecastInfo
          : forecastInfo as ForecastInfo,
      currentCondition == freezed
          ? _value.currentCondition
          : currentCondition as CurrentCondition,
    ));
  }
}

@JsonSerializable()
class _$WeatherData implements WeatherData {
  const _$WeatherData(this.cityInfo, this.forecastInfo, this.currentCondition)
      : assert(cityInfo != null),
        assert(forecastInfo != null),
        assert(currentCondition != null);

  factory _$WeatherData.fromJson(Map<String, dynamic> json) =>
      _$_$WeatherDataFromJson(json);

  @override
  final CityInfo cityInfo;
  @override
  final ForecastInfo forecastInfo;
  @override
  final CurrentCondition currentCondition;

  @override
  String toString() {
    return 'Weather(cityInfo: $cityInfo, forecastInfo: $forecastInfo, currentCondition: $currentCondition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherData &&
            (identical(other.cityInfo, cityInfo) ||
                const DeepCollectionEquality()
                    .equals(other.cityInfo, cityInfo)) &&
            (identical(other.forecastInfo, forecastInfo) ||
                const DeepCollectionEquality()
                    .equals(other.forecastInfo, forecastInfo)) &&
            (identical(other.currentCondition, currentCondition) ||
                const DeepCollectionEquality()
                    .equals(other.currentCondition, currentCondition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityInfo) ^
      const DeepCollectionEquality().hash(forecastInfo) ^
      const DeepCollectionEquality().hash(currentCondition);

  @override
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      _$WeatherDataCopyWithImpl<WeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeatherDataToJson(this);
  }
}

abstract class WeatherData implements Weather {
  const factory WeatherData(CityInfo cityInfo, ForecastInfo forecastInfo,
      CurrentCondition currentCondition) = _$WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =
      _$WeatherData.fromJson;

  @override
  CityInfo get cityInfo;
  @override
  ForecastInfo get forecastInfo;
  @override
  CurrentCondition get currentCondition;
  @override
  $WeatherDataCopyWith<WeatherData> get copyWith;
}

CityInfo _$CityInfoFromJson(Map<String, dynamic> json) {
  return CityInfoData.fromJson(json);
}

class _$CityInfoTearOff {
  const _$CityInfoTearOff();

// ignore: unused_element
  CityInfoData call(String name, String country, String latitude,
      String longitude, String elevation, String sunrise, String sunset) {
    return CityInfoData(
      name,
      country,
      latitude,
      longitude,
      elevation,
      sunrise,
      sunset,
    );
  }
}

// ignore: unused_element
const $CityInfo = _$CityInfoTearOff();

mixin _$CityInfo {
  String get name;
  String get country;
  String get latitude;
  String get longitude;
  String get elevation;
  String get sunrise;
  String get sunset;

  Map<String, dynamic> toJson();
  $CityInfoCopyWith<CityInfo> get copyWith;
}

abstract class $CityInfoCopyWith<$Res> {
  factory $CityInfoCopyWith(CityInfo value, $Res Function(CityInfo) then) =
      _$CityInfoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String country,
      String latitude,
      String longitude,
      String elevation,
      String sunrise,
      String sunset});
}

class _$CityInfoCopyWithImpl<$Res> implements $CityInfoCopyWith<$Res> {
  _$CityInfoCopyWithImpl(this._value, this._then);

  final CityInfo _value;
  // ignore: unused_field
  final $Res Function(CityInfo) _then;

  @override
  $Res call({
    Object name = freezed,
    Object country = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object elevation = freezed,
    Object sunrise = freezed,
    Object sunset = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      country: country == freezed ? _value.country : country as String,
      latitude: latitude == freezed ? _value.latitude : latitude as String,
      longitude: longitude == freezed ? _value.longitude : longitude as String,
      elevation: elevation == freezed ? _value.elevation : elevation as String,
      sunrise: sunrise == freezed ? _value.sunrise : sunrise as String,
      sunset: sunset == freezed ? _value.sunset : sunset as String,
    ));
  }
}

abstract class $CityInfoDataCopyWith<$Res> implements $CityInfoCopyWith<$Res> {
  factory $CityInfoDataCopyWith(
          CityInfoData value, $Res Function(CityInfoData) then) =
      _$CityInfoDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String country,
      String latitude,
      String longitude,
      String elevation,
      String sunrise,
      String sunset});
}

class _$CityInfoDataCopyWithImpl<$Res> extends _$CityInfoCopyWithImpl<$Res>
    implements $CityInfoDataCopyWith<$Res> {
  _$CityInfoDataCopyWithImpl(
      CityInfoData _value, $Res Function(CityInfoData) _then)
      : super(_value, (v) => _then(v as CityInfoData));

  @override
  CityInfoData get _value => super._value as CityInfoData;

  @override
  $Res call({
    Object name = freezed,
    Object country = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object elevation = freezed,
    Object sunrise = freezed,
    Object sunset = freezed,
  }) {
    return _then(CityInfoData(
      name == freezed ? _value.name : name as String,
      country == freezed ? _value.country : country as String,
      latitude == freezed ? _value.latitude : latitude as String,
      longitude == freezed ? _value.longitude : longitude as String,
      elevation == freezed ? _value.elevation : elevation as String,
      sunrise == freezed ? _value.sunrise : sunrise as String,
      sunset == freezed ? _value.sunset : sunset as String,
    ));
  }
}

@JsonSerializable()
class _$CityInfoData implements CityInfoData {
  const _$CityInfoData(this.name, this.country, this.latitude, this.longitude,
      this.elevation, this.sunrise, this.sunset)
      : assert(name != null),
        assert(country != null),
        assert(latitude != null),
        assert(longitude != null),
        assert(elevation != null),
        assert(sunrise != null),
        assert(sunset != null);

  factory _$CityInfoData.fromJson(Map<String, dynamic> json) =>
      _$_$CityInfoDataFromJson(json);

  @override
  final String name;
  @override
  final String country;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String elevation;
  @override
  final String sunrise;
  @override
  final String sunset;

  @override
  String toString() {
    return 'CityInfo(name: $name, country: $country, latitude: $latitude, longitude: $longitude, elevation: $elevation, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityInfoData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.elevation, elevation) ||
                const DeepCollectionEquality()
                    .equals(other.elevation, elevation)) &&
            (identical(other.sunrise, sunrise) ||
                const DeepCollectionEquality()
                    .equals(other.sunrise, sunrise)) &&
            (identical(other.sunset, sunset) ||
                const DeepCollectionEquality().equals(other.sunset, sunset)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(elevation) ^
      const DeepCollectionEquality().hash(sunrise) ^
      const DeepCollectionEquality().hash(sunset);

  @override
  $CityInfoDataCopyWith<CityInfoData> get copyWith =>
      _$CityInfoDataCopyWithImpl<CityInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$CityInfoDataToJson(this);
  }
}

abstract class CityInfoData implements CityInfo {
  const factory CityInfoData(
      String name,
      String country,
      String latitude,
      String longitude,
      String elevation,
      String sunrise,
      String sunset) = _$CityInfoData;

  factory CityInfoData.fromJson(Map<String, dynamic> json) =
      _$CityInfoData.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get elevation;
  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  $CityInfoDataCopyWith<CityInfoData> get copyWith;
}

ForecastInfo _$ForecastInfoFromJson(Map<String, dynamic> json) {
  return ForecastInfoData.fromJson(json);
}

class _$ForecastInfoTearOff {
  const _$ForecastInfoTearOff();

// ignore: unused_element
  ForecastInfoData call(double latitude, double longitude, double elevation) {
    return ForecastInfoData(
      latitude,
      longitude,
      elevation,
    );
  }
}

// ignore: unused_element
const $ForecastInfo = _$ForecastInfoTearOff();

mixin _$ForecastInfo {
  double get latitude;
  double get longitude;
  double get elevation;

  Map<String, dynamic> toJson();
  $ForecastInfoCopyWith<ForecastInfo> get copyWith;
}

abstract class $ForecastInfoCopyWith<$Res> {
  factory $ForecastInfoCopyWith(
          ForecastInfo value, $Res Function(ForecastInfo) then) =
      _$ForecastInfoCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude, double elevation});
}

class _$ForecastInfoCopyWithImpl<$Res> implements $ForecastInfoCopyWith<$Res> {
  _$ForecastInfoCopyWithImpl(this._value, this._then);

  final ForecastInfo _value;
  // ignore: unused_field
  final $Res Function(ForecastInfo) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
    Object elevation = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      elevation: elevation == freezed ? _value.elevation : elevation as double,
    ));
  }
}

abstract class $ForecastInfoDataCopyWith<$Res>
    implements $ForecastInfoCopyWith<$Res> {
  factory $ForecastInfoDataCopyWith(
          ForecastInfoData value, $Res Function(ForecastInfoData) then) =
      _$ForecastInfoDataCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude, double elevation});
}

class _$ForecastInfoDataCopyWithImpl<$Res>
    extends _$ForecastInfoCopyWithImpl<$Res>
    implements $ForecastInfoDataCopyWith<$Res> {
  _$ForecastInfoDataCopyWithImpl(
      ForecastInfoData _value, $Res Function(ForecastInfoData) _then)
      : super(_value, (v) => _then(v as ForecastInfoData));

  @override
  ForecastInfoData get _value => super._value as ForecastInfoData;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
    Object elevation = freezed,
  }) {
    return _then(ForecastInfoData(
      latitude == freezed ? _value.latitude : latitude as double,
      longitude == freezed ? _value.longitude : longitude as double,
      elevation == freezed ? _value.elevation : elevation as double,
    ));
  }
}

@JsonSerializable()
class _$ForecastInfoData implements ForecastInfoData {
  const _$ForecastInfoData(this.latitude, this.longitude, this.elevation)
      : assert(latitude != null),
        assert(longitude != null),
        assert(elevation != null);

  factory _$ForecastInfoData.fromJson(Map<String, dynamic> json) =>
      _$_$ForecastInfoDataFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double elevation;

  @override
  String toString() {
    return 'ForecastInfo(latitude: $latitude, longitude: $longitude, elevation: $elevation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForecastInfoData &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.elevation, elevation) ||
                const DeepCollectionEquality()
                    .equals(other.elevation, elevation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(elevation);

  @override
  $ForecastInfoDataCopyWith<ForecastInfoData> get copyWith =>
      _$ForecastInfoDataCopyWithImpl<ForecastInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$ForecastInfoDataToJson(this);
  }
}

abstract class ForecastInfoData implements ForecastInfo {
  const factory ForecastInfoData(
      double latitude, double longitude, double elevation) = _$ForecastInfoData;

  factory ForecastInfoData.fromJson(Map<String, dynamic> json) =
      _$ForecastInfoData.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get elevation;
  @override
  $ForecastInfoDataCopyWith<ForecastInfoData> get copyWith;
}

CurrentCondition _$CurrentConditionFromJson(Map<String, dynamic> json) {
  return CurrentConditionData.fromJson(json);
}

class _$CurrentConditionTearOff {
  const _$CurrentConditionTearOff();

// ignore: unused_element
  CurrentConditionData call(
      String date,
      String hour,
      int tmp,
      int wndSpd,
      int wndGust,
      String wndDir,
      double pressure,
      int humidity,
      String condition,
      String conditionKey,
      String icon,
      String iconBig) {
    return CurrentConditionData(
      date,
      hour,
      tmp,
      wndSpd,
      wndGust,
      wndDir,
      pressure,
      humidity,
      condition,
      conditionKey,
      icon,
      iconBig,
    );
  }
}

// ignore: unused_element
const $CurrentCondition = _$CurrentConditionTearOff();

mixin _$CurrentCondition {
  String get date;
  String get hour;
  int get tmp;
  int get wndSpd;
  int get wndGust;
  String get wndDir;
  double get pressure;
  int get humidity;
  String get condition;
  String get conditionKey;
  String get icon;
  String get iconBig;

  Map<String, dynamic> toJson();
  $CurrentConditionCopyWith<CurrentCondition> get copyWith;
}

abstract class $CurrentConditionCopyWith<$Res> {
  factory $CurrentConditionCopyWith(
          CurrentCondition value, $Res Function(CurrentCondition) then) =
      _$CurrentConditionCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String hour,
      int tmp,
      int wndSpd,
      int wndGust,
      String wndDir,
      double pressure,
      int humidity,
      String condition,
      String conditionKey,
      String icon,
      String iconBig});
}

class _$CurrentConditionCopyWithImpl<$Res>
    implements $CurrentConditionCopyWith<$Res> {
  _$CurrentConditionCopyWithImpl(this._value, this._then);

  final CurrentCondition _value;
  // ignore: unused_field
  final $Res Function(CurrentCondition) _then;

  @override
  $Res call({
    Object date = freezed,
    Object hour = freezed,
    Object tmp = freezed,
    Object wndSpd = freezed,
    Object wndGust = freezed,
    Object wndDir = freezed,
    Object pressure = freezed,
    Object humidity = freezed,
    Object condition = freezed,
    Object conditionKey = freezed,
    Object icon = freezed,
    Object iconBig = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      hour: hour == freezed ? _value.hour : hour as String,
      tmp: tmp == freezed ? _value.tmp : tmp as int,
      wndSpd: wndSpd == freezed ? _value.wndSpd : wndSpd as int,
      wndGust: wndGust == freezed ? _value.wndGust : wndGust as int,
      wndDir: wndDir == freezed ? _value.wndDir : wndDir as String,
      pressure: pressure == freezed ? _value.pressure : pressure as double,
      humidity: humidity == freezed ? _value.humidity : humidity as int,
      condition: condition == freezed ? _value.condition : condition as String,
      conditionKey: conditionKey == freezed
          ? _value.conditionKey
          : conditionKey as String,
      icon: icon == freezed ? _value.icon : icon as String,
      iconBig: iconBig == freezed ? _value.iconBig : iconBig as String,
    ));
  }
}

abstract class $CurrentConditionDataCopyWith<$Res>
    implements $CurrentConditionCopyWith<$Res> {
  factory $CurrentConditionDataCopyWith(CurrentConditionData value,
          $Res Function(CurrentConditionData) then) =
      _$CurrentConditionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String hour,
      int tmp,
      int wndSpd,
      int wndGust,
      String wndDir,
      double pressure,
      int humidity,
      String condition,
      String conditionKey,
      String icon,
      String iconBig});
}

class _$CurrentConditionDataCopyWithImpl<$Res>
    extends _$CurrentConditionCopyWithImpl<$Res>
    implements $CurrentConditionDataCopyWith<$Res> {
  _$CurrentConditionDataCopyWithImpl(
      CurrentConditionData _value, $Res Function(CurrentConditionData) _then)
      : super(_value, (v) => _then(v as CurrentConditionData));

  @override
  CurrentConditionData get _value => super._value as CurrentConditionData;

  @override
  $Res call({
    Object date = freezed,
    Object hour = freezed,
    Object tmp = freezed,
    Object wndSpd = freezed,
    Object wndGust = freezed,
    Object wndDir = freezed,
    Object pressure = freezed,
    Object humidity = freezed,
    Object condition = freezed,
    Object conditionKey = freezed,
    Object icon = freezed,
    Object iconBig = freezed,
  }) {
    return _then(CurrentConditionData(
      date == freezed ? _value.date : date as String,
      hour == freezed ? _value.hour : hour as String,
      tmp == freezed ? _value.tmp : tmp as int,
      wndSpd == freezed ? _value.wndSpd : wndSpd as int,
      wndGust == freezed ? _value.wndGust : wndGust as int,
      wndDir == freezed ? _value.wndDir : wndDir as String,
      pressure == freezed ? _value.pressure : pressure as double,
      humidity == freezed ? _value.humidity : humidity as int,
      condition == freezed ? _value.condition : condition as String,
      conditionKey == freezed ? _value.conditionKey : conditionKey as String,
      icon == freezed ? _value.icon : icon as String,
      iconBig == freezed ? _value.iconBig : iconBig as String,
    ));
  }
}

@JsonSerializable()
class _$CurrentConditionData implements CurrentConditionData {
  const _$CurrentConditionData(
      this.date,
      this.hour,
      this.tmp,
      this.wndSpd,
      this.wndGust,
      this.wndDir,
      this.pressure,
      this.humidity,
      this.condition,
      this.conditionKey,
      this.icon,
      this.iconBig)
      : assert(date != null),
        assert(hour != null),
        assert(tmp != null),
        assert(wndSpd != null),
        assert(wndGust != null),
        assert(wndDir != null),
        assert(pressure != null),
        assert(humidity != null),
        assert(condition != null),
        assert(conditionKey != null),
        assert(icon != null),
        assert(iconBig != null);

  factory _$CurrentConditionData.fromJson(Map<String, dynamic> json) =>
      _$_$CurrentConditionDataFromJson(json);

  @override
  final String date;
  @override
  final String hour;
  @override
  final int tmp;
  @override
  final int wndSpd;
  @override
  final int wndGust;
  @override
  final String wndDir;
  @override
  final double pressure;
  @override
  final int humidity;
  @override
  final String condition;
  @override
  final String conditionKey;
  @override
  final String icon;
  @override
  final String iconBig;

  @override
  String toString() {
    return 'CurrentCondition(date: $date, hour: $hour, tmp: $tmp, wndSpd: $wndSpd, wndGust: $wndGust, wndDir: $wndDir, pressure: $pressure, humidity: $humidity, condition: $condition, conditionKey: $conditionKey, icon: $icon, iconBig: $iconBig)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentConditionData &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.hour, hour) ||
                const DeepCollectionEquality().equals(other.hour, hour)) &&
            (identical(other.tmp, tmp) ||
                const DeepCollectionEquality().equals(other.tmp, tmp)) &&
            (identical(other.wndSpd, wndSpd) ||
                const DeepCollectionEquality().equals(other.wndSpd, wndSpd)) &&
            (identical(other.wndGust, wndGust) ||
                const DeepCollectionEquality()
                    .equals(other.wndGust, wndGust)) &&
            (identical(other.wndDir, wndDir) ||
                const DeepCollectionEquality().equals(other.wndDir, wndDir)) &&
            (identical(other.pressure, pressure) ||
                const DeepCollectionEquality()
                    .equals(other.pressure, pressure)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.conditionKey, conditionKey) ||
                const DeepCollectionEquality()
                    .equals(other.conditionKey, conditionKey)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.iconBig, iconBig) ||
                const DeepCollectionEquality().equals(other.iconBig, iconBig)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(hour) ^
      const DeepCollectionEquality().hash(tmp) ^
      const DeepCollectionEquality().hash(wndSpd) ^
      const DeepCollectionEquality().hash(wndGust) ^
      const DeepCollectionEquality().hash(wndDir) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(conditionKey) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(iconBig);

  @override
  $CurrentConditionDataCopyWith<CurrentConditionData> get copyWith =>
      _$CurrentConditionDataCopyWithImpl<CurrentConditionData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$CurrentConditionDataToJson(this);
  }
}

abstract class CurrentConditionData implements CurrentCondition {
  const factory CurrentConditionData(
      String date,
      String hour,
      int tmp,
      int wndSpd,
      int wndGust,
      String wndDir,
      double pressure,
      int humidity,
      String condition,
      String conditionKey,
      String icon,
      String iconBig) = _$CurrentConditionData;

  factory CurrentConditionData.fromJson(Map<String, dynamic> json) =
      _$CurrentConditionData.fromJson;

  @override
  String get date;
  @override
  String get hour;
  @override
  int get tmp;
  @override
  int get wndSpd;
  @override
  int get wndGust;
  @override
  String get wndDir;
  @override
  double get pressure;
  @override
  int get humidity;
  @override
  String get condition;
  @override
  String get conditionKey;
  @override
  String get icon;
  @override
  String get iconBig;
  @override
  $CurrentConditionDataCopyWith<CurrentConditionData> get copyWith;
}
