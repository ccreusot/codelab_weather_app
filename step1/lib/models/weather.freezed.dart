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
  WeatherData call({CityInfo cityInfo}) {
    return WeatherData(
      cityInfo: cityInfo,
    );
  }
}

// ignore: unused_element
const $Weather = _$WeatherTearOff();

mixin _$Weather {
  CityInfo get cityInfo;

  Map<String, dynamic> toJson();
  $WeatherCopyWith<Weather> get copyWith;
}

abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call({CityInfo cityInfo});

  $CityInfoCopyWith<$Res> get cityInfo;
}

class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object cityInfo = freezed,
  }) {
    return _then(_value.copyWith(
      cityInfo: cityInfo == freezed ? _value.cityInfo : cityInfo as CityInfo,
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
}

abstract class $WeatherDataCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call({CityInfo cityInfo});

  @override
  $CityInfoCopyWith<$Res> get cityInfo;
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
  }) {
    return _then(WeatherData(
      cityInfo: cityInfo == freezed ? _value.cityInfo : cityInfo as CityInfo,
    ));
  }
}

@JsonSerializable()
class _$WeatherData implements WeatherData {
  const _$WeatherData({this.cityInfo});

  factory _$WeatherData.fromJson(Map<String, dynamic> json) =>
      _$_$WeatherDataFromJson(json);

  @override
  final CityInfo cityInfo;

  @override
  String toString() {
    return 'Weather(cityInfo: $cityInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherData &&
            (identical(other.cityInfo, cityInfo) ||
                const DeepCollectionEquality()
                    .equals(other.cityInfo, cityInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityInfo);

  @override
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      _$WeatherDataCopyWithImpl<WeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeatherDataToJson(this);
  }
}

abstract class WeatherData implements Weather {
  const factory WeatherData({CityInfo cityInfo}) = _$WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =
      _$WeatherData.fromJson;

  @override
  CityInfo get cityInfo;
  @override
  $WeatherDataCopyWith<WeatherData> get copyWith;
}

CityInfo _$CityInfoFromJson(Map<String, dynamic> json) {
  return CityInfoData.fromJson(json);
}

class _$CityInfoTearOff {
  const _$CityInfoTearOff();

// ignore: unused_element
  CityInfoData call(
      {String name,
      String country,
      String latitude,
      String longitude,
      String elevation,
      String sunrise,
      String sunset}) {
    return CityInfoData(
      name: name,
      country: country,
      latitude: latitude,
      longitude: longitude,
      elevation: elevation,
      sunrise: sunrise,
      sunset: sunset,
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

@JsonSerializable()
class _$CityInfoData implements CityInfoData {
  const _$CityInfoData(
      {this.name,
      this.country,
      this.latitude,
      this.longitude,
      this.elevation,
      this.sunrise,
      this.sunset});

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
      {String name,
      String country,
      String latitude,
      String longitude,
      String elevation,
      String sunrise,
      String sunset}) = _$CityInfoData;

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
