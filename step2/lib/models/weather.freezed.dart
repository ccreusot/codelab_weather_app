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

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

// ignore: unused_element
  WeatherData call(
      @JsonKey(name: "city_info") CityInfo cityInfo,
      @JsonKey(name: "forecast_info") ForecastInfo forecastInfo,
      @JsonKey(name: "current_condition") CurrentCondition currentCondition,
      @JsonKey(name: "fcst_day_0") ForecastDay fcstDay0,
      @JsonKey(name: "fcst_day_1") ForecastDay fcstDay1,
      @JsonKey(name: "fcst_day_2") ForecastDay fcstDay2,
      @JsonKey(name: "fcst_day_3") ForecastDay fcstDay3,
      @JsonKey(name: "fcst_day_4") ForecastDay fcstDay4) {
    return WeatherData(
      cityInfo,
      forecastInfo,
      currentCondition,
      fcstDay0,
      fcstDay1,
      fcstDay2,
      fcstDay3,
      fcstDay4,
    );
  }

// ignore: unused_element
  Weather fromJson(Map<String, Object> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  @JsonKey(name: "city_info")
  CityInfo get cityInfo;
  @JsonKey(name: "forecast_info")
  ForecastInfo get forecastInfo;
  @JsonKey(name: "current_condition")
  CurrentCondition get currentCondition;
  @JsonKey(name: "fcst_day_0")
  ForecastDay get fcstDay0;
  @JsonKey(name: "fcst_day_1")
  ForecastDay get fcstDay1;
  @JsonKey(name: "fcst_day_2")
  ForecastDay get fcstDay2;
  @JsonKey(name: "fcst_day_3")
  ForecastDay get fcstDay3;
  @JsonKey(name: "fcst_day_4")
  ForecastDay get fcstDay4;

  Map<String, dynamic> toJson();
  $WeatherCopyWith<Weather> get copyWith;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "city_info") CityInfo cityInfo,
      @JsonKey(name: "forecast_info") ForecastInfo forecastInfo,
      @JsonKey(name: "current_condition") CurrentCondition currentCondition,
      @JsonKey(name: "fcst_day_0") ForecastDay fcstDay0,
      @JsonKey(name: "fcst_day_1") ForecastDay fcstDay1,
      @JsonKey(name: "fcst_day_2") ForecastDay fcstDay2,
      @JsonKey(name: "fcst_day_3") ForecastDay fcstDay3,
      @JsonKey(name: "fcst_day_4") ForecastDay fcstDay4});

  $CityInfoCopyWith<$Res> get cityInfo;
  $ForecastInfoCopyWith<$Res> get forecastInfo;
  $CurrentConditionCopyWith<$Res> get currentCondition;
  $ForecastDayCopyWith<$Res> get fcstDay0;
  $ForecastDayCopyWith<$Res> get fcstDay1;
  $ForecastDayCopyWith<$Res> get fcstDay2;
  $ForecastDayCopyWith<$Res> get fcstDay3;
  $ForecastDayCopyWith<$Res> get fcstDay4;
}

/// @nodoc
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
    Object fcstDay0 = freezed,
    Object fcstDay1 = freezed,
    Object fcstDay2 = freezed,
    Object fcstDay3 = freezed,
    Object fcstDay4 = freezed,
  }) {
    return _then(_value.copyWith(
      cityInfo: cityInfo == freezed ? _value.cityInfo : cityInfo as CityInfo,
      forecastInfo: forecastInfo == freezed
          ? _value.forecastInfo
          : forecastInfo as ForecastInfo,
      currentCondition: currentCondition == freezed
          ? _value.currentCondition
          : currentCondition as CurrentCondition,
      fcstDay0: fcstDay0 == freezed ? _value.fcstDay0 : fcstDay0 as ForecastDay,
      fcstDay1: fcstDay1 == freezed ? _value.fcstDay1 : fcstDay1 as ForecastDay,
      fcstDay2: fcstDay2 == freezed ? _value.fcstDay2 : fcstDay2 as ForecastDay,
      fcstDay3: fcstDay3 == freezed ? _value.fcstDay3 : fcstDay3 as ForecastDay,
      fcstDay4: fcstDay4 == freezed ? _value.fcstDay4 : fcstDay4 as ForecastDay,
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

  @override
  $ForecastDayCopyWith<$Res> get fcstDay0 {
    if (_value.fcstDay0 == null) {
      return null;
    }
    return $ForecastDayCopyWith<$Res>(_value.fcstDay0, (value) {
      return _then(_value.copyWith(fcstDay0: value));
    });
  }

  @override
  $ForecastDayCopyWith<$Res> get fcstDay1 {
    if (_value.fcstDay1 == null) {
      return null;
    }
    return $ForecastDayCopyWith<$Res>(_value.fcstDay1, (value) {
      return _then(_value.copyWith(fcstDay1: value));
    });
  }

  @override
  $ForecastDayCopyWith<$Res> get fcstDay2 {
    if (_value.fcstDay2 == null) {
      return null;
    }
    return $ForecastDayCopyWith<$Res>(_value.fcstDay2, (value) {
      return _then(_value.copyWith(fcstDay2: value));
    });
  }

  @override
  $ForecastDayCopyWith<$Res> get fcstDay3 {
    if (_value.fcstDay3 == null) {
      return null;
    }
    return $ForecastDayCopyWith<$Res>(_value.fcstDay3, (value) {
      return _then(_value.copyWith(fcstDay3: value));
    });
  }

  @override
  $ForecastDayCopyWith<$Res> get fcstDay4 {
    if (_value.fcstDay4 == null) {
      return null;
    }
    return $ForecastDayCopyWith<$Res>(_value.fcstDay4, (value) {
      return _then(_value.copyWith(fcstDay4: value));
    });
  }
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "city_info") CityInfo cityInfo,
      @JsonKey(name: "forecast_info") ForecastInfo forecastInfo,
      @JsonKey(name: "current_condition") CurrentCondition currentCondition,
      @JsonKey(name: "fcst_day_0") ForecastDay fcstDay0,
      @JsonKey(name: "fcst_day_1") ForecastDay fcstDay1,
      @JsonKey(name: "fcst_day_2") ForecastDay fcstDay2,
      @JsonKey(name: "fcst_day_3") ForecastDay fcstDay3,
      @JsonKey(name: "fcst_day_4") ForecastDay fcstDay4});

  @override
  $CityInfoCopyWith<$Res> get cityInfo;
  @override
  $ForecastInfoCopyWith<$Res> get forecastInfo;
  @override
  $CurrentConditionCopyWith<$Res> get currentCondition;
  @override
  $ForecastDayCopyWith<$Res> get fcstDay0;
  @override
  $ForecastDayCopyWith<$Res> get fcstDay1;
  @override
  $ForecastDayCopyWith<$Res> get fcstDay2;
  @override
  $ForecastDayCopyWith<$Res> get fcstDay3;
  @override
  $ForecastDayCopyWith<$Res> get fcstDay4;
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
    Object cityInfo = freezed,
    Object forecastInfo = freezed,
    Object currentCondition = freezed,
    Object fcstDay0 = freezed,
    Object fcstDay1 = freezed,
    Object fcstDay2 = freezed,
    Object fcstDay3 = freezed,
    Object fcstDay4 = freezed,
  }) {
    return _then(WeatherData(
      cityInfo == freezed ? _value.cityInfo : cityInfo as CityInfo,
      forecastInfo == freezed
          ? _value.forecastInfo
          : forecastInfo as ForecastInfo,
      currentCondition == freezed
          ? _value.currentCondition
          : currentCondition as CurrentCondition,
      fcstDay0 == freezed ? _value.fcstDay0 : fcstDay0 as ForecastDay,
      fcstDay1 == freezed ? _value.fcstDay1 : fcstDay1 as ForecastDay,
      fcstDay2 == freezed ? _value.fcstDay2 : fcstDay2 as ForecastDay,
      fcstDay3 == freezed ? _value.fcstDay3 : fcstDay3 as ForecastDay,
      fcstDay4 == freezed ? _value.fcstDay4 : fcstDay4 as ForecastDay,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$WeatherData implements WeatherData {
  const _$WeatherData(
      @JsonKey(name: "city_info") this.cityInfo,
      @JsonKey(name: "forecast_info") this.forecastInfo,
      @JsonKey(name: "current_condition") this.currentCondition,
      @JsonKey(name: "fcst_day_0") this.fcstDay0,
      @JsonKey(name: "fcst_day_1") this.fcstDay1,
      @JsonKey(name: "fcst_day_2") this.fcstDay2,
      @JsonKey(name: "fcst_day_3") this.fcstDay3,
      @JsonKey(name: "fcst_day_4") this.fcstDay4)
      : assert(cityInfo != null),
        assert(forecastInfo != null),
        assert(currentCondition != null),
        assert(fcstDay0 != null),
        assert(fcstDay1 != null),
        assert(fcstDay2 != null),
        assert(fcstDay3 != null),
        assert(fcstDay4 != null);

  factory _$WeatherData.fromJson(Map<String, dynamic> json) =>
      _$_$WeatherDataFromJson(json);

  @override
  @JsonKey(name: "city_info")
  final CityInfo cityInfo;
  @override
  @JsonKey(name: "forecast_info")
  final ForecastInfo forecastInfo;
  @override
  @JsonKey(name: "current_condition")
  final CurrentCondition currentCondition;
  @override
  @JsonKey(name: "fcst_day_0")
  final ForecastDay fcstDay0;
  @override
  @JsonKey(name: "fcst_day_1")
  final ForecastDay fcstDay1;
  @override
  @JsonKey(name: "fcst_day_2")
  final ForecastDay fcstDay2;
  @override
  @JsonKey(name: "fcst_day_3")
  final ForecastDay fcstDay3;
  @override
  @JsonKey(name: "fcst_day_4")
  final ForecastDay fcstDay4;

  @override
  String toString() {
    return 'Weather(cityInfo: $cityInfo, forecastInfo: $forecastInfo, currentCondition: $currentCondition, fcstDay0: $fcstDay0, fcstDay1: $fcstDay1, fcstDay2: $fcstDay2, fcstDay3: $fcstDay3, fcstDay4: $fcstDay4)';
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
                    .equals(other.currentCondition, currentCondition)) &&
            (identical(other.fcstDay0, fcstDay0) ||
                const DeepCollectionEquality()
                    .equals(other.fcstDay0, fcstDay0)) &&
            (identical(other.fcstDay1, fcstDay1) ||
                const DeepCollectionEquality()
                    .equals(other.fcstDay1, fcstDay1)) &&
            (identical(other.fcstDay2, fcstDay2) ||
                const DeepCollectionEquality()
                    .equals(other.fcstDay2, fcstDay2)) &&
            (identical(other.fcstDay3, fcstDay3) ||
                const DeepCollectionEquality()
                    .equals(other.fcstDay3, fcstDay3)) &&
            (identical(other.fcstDay4, fcstDay4) ||
                const DeepCollectionEquality()
                    .equals(other.fcstDay4, fcstDay4)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cityInfo) ^
      const DeepCollectionEquality().hash(forecastInfo) ^
      const DeepCollectionEquality().hash(currentCondition) ^
      const DeepCollectionEquality().hash(fcstDay0) ^
      const DeepCollectionEquality().hash(fcstDay1) ^
      const DeepCollectionEquality().hash(fcstDay2) ^
      const DeepCollectionEquality().hash(fcstDay3) ^
      const DeepCollectionEquality().hash(fcstDay4);

  @override
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      _$WeatherDataCopyWithImpl<WeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeatherDataToJson(this);
  }
}

abstract class WeatherData implements Weather {
  const factory WeatherData(
      @JsonKey(name: "city_info") CityInfo cityInfo,
      @JsonKey(name: "forecast_info") ForecastInfo forecastInfo,
      @JsonKey(name: "current_condition") CurrentCondition currentCondition,
      @JsonKey(name: "fcst_day_0") ForecastDay fcstDay0,
      @JsonKey(name: "fcst_day_1") ForecastDay fcstDay1,
      @JsonKey(name: "fcst_day_2") ForecastDay fcstDay2,
      @JsonKey(name: "fcst_day_3") ForecastDay fcstDay3,
      @JsonKey(name: "fcst_day_4") ForecastDay fcstDay4) = _$WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =
      _$WeatherData.fromJson;

  @override
  @JsonKey(name: "city_info")
  CityInfo get cityInfo;
  @override
  @JsonKey(name: "forecast_info")
  ForecastInfo get forecastInfo;
  @override
  @JsonKey(name: "current_condition")
  CurrentCondition get currentCondition;
  @override
  @JsonKey(name: "fcst_day_0")
  ForecastDay get fcstDay0;
  @override
  @JsonKey(name: "fcst_day_1")
  ForecastDay get fcstDay1;
  @override
  @JsonKey(name: "fcst_day_2")
  ForecastDay get fcstDay2;
  @override
  @JsonKey(name: "fcst_day_3")
  ForecastDay get fcstDay3;
  @override
  @JsonKey(name: "fcst_day_4")
  ForecastDay get fcstDay4;
  @override
  $WeatherDataCopyWith<WeatherData> get copyWith;
}

CityInfo _$CityInfoFromJson(Map<String, dynamic> json) {
  return CityInfoData.fromJson(json);
}

/// @nodoc
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

// ignore: unused_element
  CityInfo fromJson(Map<String, Object> json) {
    return CityInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CityInfo = _$CityInfoTearOff();

/// @nodoc
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

/// @nodoc
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

/// @nodoc
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

/// @nodoc
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

/// @nodoc
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

/// @nodoc
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

/// @nodoc
class _$ForecastInfoTearOff {
  const _$ForecastInfoTearOff();

// ignore: unused_element
  ForecastInfoData call(String latitude, String longitude, String elevation) {
    return ForecastInfoData(
      latitude,
      longitude,
      elevation,
    );
  }

// ignore: unused_element
  ForecastInfo fromJson(Map<String, Object> json) {
    return ForecastInfo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ForecastInfo = _$ForecastInfoTearOff();

/// @nodoc
mixin _$ForecastInfo {
  String get latitude;
  String get longitude;
  String get elevation;

  Map<String, dynamic> toJson();
  $ForecastInfoCopyWith<ForecastInfo> get copyWith;
}

/// @nodoc
abstract class $ForecastInfoCopyWith<$Res> {
  factory $ForecastInfoCopyWith(
          ForecastInfo value, $Res Function(ForecastInfo) then) =
      _$ForecastInfoCopyWithImpl<$Res>;
  $Res call({String latitude, String longitude, String elevation});
}

/// @nodoc
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
      latitude: latitude == freezed ? _value.latitude : latitude as String,
      longitude: longitude == freezed ? _value.longitude : longitude as String,
      elevation: elevation == freezed ? _value.elevation : elevation as String,
    ));
  }
}

/// @nodoc
abstract class $ForecastInfoDataCopyWith<$Res>
    implements $ForecastInfoCopyWith<$Res> {
  factory $ForecastInfoDataCopyWith(
          ForecastInfoData value, $Res Function(ForecastInfoData) then) =
      _$ForecastInfoDataCopyWithImpl<$Res>;
  @override
  $Res call({String latitude, String longitude, String elevation});
}

/// @nodoc
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
      latitude == freezed ? _value.latitude : latitude as String,
      longitude == freezed ? _value.longitude : longitude as String,
      elevation == freezed ? _value.elevation : elevation as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ForecastInfoData implements ForecastInfoData {
  const _$ForecastInfoData(this.latitude, this.longitude, this.elevation)
      : assert(latitude != null),
        assert(longitude != null),
        assert(elevation != null);

  factory _$ForecastInfoData.fromJson(Map<String, dynamic> json) =>
      _$_$ForecastInfoDataFromJson(json);

  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String elevation;

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
      String latitude, String longitude, String elevation) = _$ForecastInfoData;

  factory ForecastInfoData.fromJson(Map<String, dynamic> json) =
      _$ForecastInfoData.fromJson;

  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get elevation;
  @override
  $ForecastInfoDataCopyWith<ForecastInfoData> get copyWith;
}

CurrentCondition _$CurrentConditionFromJson(Map<String, dynamic> json) {
  return CurrentConditionData.fromJson(json);
}

/// @nodoc
class _$CurrentConditionTearOff {
  const _$CurrentConditionTearOff();

// ignore: unused_element
  CurrentConditionData call(
      String date,
      String hour,
      int tmp,
      @JsonKey(name: "wnd_spd") int wndSpd,
      @JsonKey(name: "wnd_gust") int wndGust,
      @JsonKey(name: "wnd_dir") String wndDir,
      double pressure,
      int humidity,
      String condition,
      @JsonKey(name: "condition_key") String conditionKey,
      String icon,
      @JsonKey(name: "icon_big") String iconBig) {
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

// ignore: unused_element
  CurrentCondition fromJson(Map<String, Object> json) {
    return CurrentCondition.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentCondition = _$CurrentConditionTearOff();

/// @nodoc
mixin _$CurrentCondition {
  String get date;
  String get hour;
  int get tmp;
  @JsonKey(name: "wnd_spd")
  int get wndSpd;
  @JsonKey(name: "wnd_gust")
  int get wndGust;
  @JsonKey(name: "wnd_dir")
  String get wndDir;
  double get pressure;
  int get humidity;
  String get condition;
  @JsonKey(name: "condition_key")
  String get conditionKey;
  String get icon;
  @JsonKey(name: "icon_big")
  String get iconBig;

  Map<String, dynamic> toJson();
  $CurrentConditionCopyWith<CurrentCondition> get copyWith;
}

/// @nodoc
abstract class $CurrentConditionCopyWith<$Res> {
  factory $CurrentConditionCopyWith(
          CurrentCondition value, $Res Function(CurrentCondition) then) =
      _$CurrentConditionCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String hour,
      int tmp,
      @JsonKey(name: "wnd_spd") int wndSpd,
      @JsonKey(name: "wnd_gust") int wndGust,
      @JsonKey(name: "wnd_dir") String wndDir,
      double pressure,
      int humidity,
      String condition,
      @JsonKey(name: "condition_key") String conditionKey,
      String icon,
      @JsonKey(name: "icon_big") String iconBig});
}

/// @nodoc
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

/// @nodoc
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
      @JsonKey(name: "wnd_spd") int wndSpd,
      @JsonKey(name: "wnd_gust") int wndGust,
      @JsonKey(name: "wnd_dir") String wndDir,
      double pressure,
      int humidity,
      String condition,
      @JsonKey(name: "condition_key") String conditionKey,
      String icon,
      @JsonKey(name: "icon_big") String iconBig});
}

/// @nodoc
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

/// @nodoc
class _$CurrentConditionData implements CurrentConditionData {
  const _$CurrentConditionData(
      this.date,
      this.hour,
      this.tmp,
      @JsonKey(name: "wnd_spd") this.wndSpd,
      @JsonKey(name: "wnd_gust") this.wndGust,
      @JsonKey(name: "wnd_dir") this.wndDir,
      this.pressure,
      this.humidity,
      this.condition,
      @JsonKey(name: "condition_key") this.conditionKey,
      this.icon,
      @JsonKey(name: "icon_big") this.iconBig)
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
  @JsonKey(name: "wnd_spd")
  final int wndSpd;
  @override
  @JsonKey(name: "wnd_gust")
  final int wndGust;
  @override
  @JsonKey(name: "wnd_dir")
  final String wndDir;
  @override
  final double pressure;
  @override
  final int humidity;
  @override
  final String condition;
  @override
  @JsonKey(name: "condition_key")
  final String conditionKey;
  @override
  final String icon;
  @override
  @JsonKey(name: "icon_big")
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
      @JsonKey(name: "wnd_spd") int wndSpd,
      @JsonKey(name: "wnd_gust") int wndGust,
      @JsonKey(name: "wnd_dir") String wndDir,
      double pressure,
      int humidity,
      String condition,
      @JsonKey(name: "condition_key") String conditionKey,
      String icon,
      @JsonKey(name: "icon_big") String iconBig) = _$CurrentConditionData;

  factory CurrentConditionData.fromJson(Map<String, dynamic> json) =
      _$CurrentConditionData.fromJson;

  @override
  String get date;
  @override
  String get hour;
  @override
  int get tmp;
  @override
  @JsonKey(name: "wnd_spd")
  int get wndSpd;
  @override
  @JsonKey(name: "wnd_gust")
  int get wndGust;
  @override
  @JsonKey(name: "wnd_dir")
  String get wndDir;
  @override
  double get pressure;
  @override
  int get humidity;
  @override
  String get condition;
  @override
  @JsonKey(name: "condition_key")
  String get conditionKey;
  @override
  String get icon;
  @override
  @JsonKey(name: "icon_big")
  String get iconBig;
  @override
  $CurrentConditionDataCopyWith<CurrentConditionData> get copyWith;
}

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) {
  return ForecastDayData.fromJson(json);
}

/// @nodoc
class _$ForecastDayTearOff {
  const _$ForecastDayTearOff();

// ignore: unused_element
  ForecastDayData call(
      String date,
      @JsonKey(name: "day_short") String dayShort,
      @JsonKey(name: "day_long") String dayLong,
      int tmin,
      int tmax,
      String condition,
      @JsonKey(name: "condition_key") String conditionKey,
      String icon,
      @JsonKey(name: "icon_big") String iconBig,
      @JsonKey(name: "hourly_data") Map<String, HourlyData> hourlyData) {
    return ForecastDayData(
      date,
      dayShort,
      dayLong,
      tmin,
      tmax,
      condition,
      conditionKey,
      icon,
      iconBig,
      hourlyData,
    );
  }

// ignore: unused_element
  ForecastDay fromJson(Map<String, Object> json) {
    return ForecastDay.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ForecastDay = _$ForecastDayTearOff();

/// @nodoc
mixin _$ForecastDay {
  String get date;
  @JsonKey(name: "day_short")
  String get dayShort;
  @JsonKey(name: "day_long")
  String get dayLong;
  int get tmin;
  int get tmax;
  String get condition;
  @JsonKey(name: "condition_key")
  String get conditionKey;
  String get icon;
  @JsonKey(name: "icon_big")
  String get iconBig;
  @JsonKey(name: "hourly_data")
  Map<String, HourlyData> get hourlyData;

  Map<String, dynamic> toJson();
  $ForecastDayCopyWith<ForecastDay> get copyWith;
}

/// @nodoc
abstract class $ForecastDayCopyWith<$Res> {
  factory $ForecastDayCopyWith(
          ForecastDay value, $Res Function(ForecastDay) then) =
      _$ForecastDayCopyWithImpl<$Res>;
  $Res call(
      {String date,
      @JsonKey(name: "day_short") String dayShort,
      @JsonKey(name: "day_long") String dayLong,
      int tmin,
      int tmax,
      String condition,
      @JsonKey(name: "condition_key") String conditionKey,
      String icon,
      @JsonKey(name: "icon_big") String iconBig,
      @JsonKey(name: "hourly_data") Map<String, HourlyData> hourlyData});
}

/// @nodoc
class _$ForecastDayCopyWithImpl<$Res> implements $ForecastDayCopyWith<$Res> {
  _$ForecastDayCopyWithImpl(this._value, this._then);

  final ForecastDay _value;
  // ignore: unused_field
  final $Res Function(ForecastDay) _then;

  @override
  $Res call({
    Object date = freezed,
    Object dayShort = freezed,
    Object dayLong = freezed,
    Object tmin = freezed,
    Object tmax = freezed,
    Object condition = freezed,
    Object conditionKey = freezed,
    Object icon = freezed,
    Object iconBig = freezed,
    Object hourlyData = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as String,
      dayShort: dayShort == freezed ? _value.dayShort : dayShort as String,
      dayLong: dayLong == freezed ? _value.dayLong : dayLong as String,
      tmin: tmin == freezed ? _value.tmin : tmin as int,
      tmax: tmax == freezed ? _value.tmax : tmax as int,
      condition: condition == freezed ? _value.condition : condition as String,
      conditionKey: conditionKey == freezed
          ? _value.conditionKey
          : conditionKey as String,
      icon: icon == freezed ? _value.icon : icon as String,
      iconBig: iconBig == freezed ? _value.iconBig : iconBig as String,
      hourlyData: hourlyData == freezed
          ? _value.hourlyData
          : hourlyData as Map<String, HourlyData>,
    ));
  }
}

/// @nodoc
abstract class $ForecastDayDataCopyWith<$Res>
    implements $ForecastDayCopyWith<$Res> {
  factory $ForecastDayDataCopyWith(
          ForecastDayData value, $Res Function(ForecastDayData) then) =
      _$ForecastDayDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      @JsonKey(name: "day_short") String dayShort,
      @JsonKey(name: "day_long") String dayLong,
      int tmin,
      int tmax,
      String condition,
      @JsonKey(name: "condition_key") String conditionKey,
      String icon,
      @JsonKey(name: "icon_big") String iconBig,
      @JsonKey(name: "hourly_data") Map<String, HourlyData> hourlyData});
}

/// @nodoc
class _$ForecastDayDataCopyWithImpl<$Res>
    extends _$ForecastDayCopyWithImpl<$Res>
    implements $ForecastDayDataCopyWith<$Res> {
  _$ForecastDayDataCopyWithImpl(
      ForecastDayData _value, $Res Function(ForecastDayData) _then)
      : super(_value, (v) => _then(v as ForecastDayData));

  @override
  ForecastDayData get _value => super._value as ForecastDayData;

  @override
  $Res call({
    Object date = freezed,
    Object dayShort = freezed,
    Object dayLong = freezed,
    Object tmin = freezed,
    Object tmax = freezed,
    Object condition = freezed,
    Object conditionKey = freezed,
    Object icon = freezed,
    Object iconBig = freezed,
    Object hourlyData = freezed,
  }) {
    return _then(ForecastDayData(
      date == freezed ? _value.date : date as String,
      dayShort == freezed ? _value.dayShort : dayShort as String,
      dayLong == freezed ? _value.dayLong : dayLong as String,
      tmin == freezed ? _value.tmin : tmin as int,
      tmax == freezed ? _value.tmax : tmax as int,
      condition == freezed ? _value.condition : condition as String,
      conditionKey == freezed ? _value.conditionKey : conditionKey as String,
      icon == freezed ? _value.icon : icon as String,
      iconBig == freezed ? _value.iconBig : iconBig as String,
      hourlyData == freezed
          ? _value.hourlyData
          : hourlyData as Map<String, HourlyData>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ForecastDayData implements ForecastDayData {
  const _$ForecastDayData(
      this.date,
      @JsonKey(name: "day_short") this.dayShort,
      @JsonKey(name: "day_long") this.dayLong,
      this.tmin,
      this.tmax,
      this.condition,
      @JsonKey(name: "condition_key") this.conditionKey,
      this.icon,
      @JsonKey(name: "icon_big") this.iconBig,
      @JsonKey(name: "hourly_data") this.hourlyData)
      : assert(date != null),
        assert(dayShort != null),
        assert(dayLong != null),
        assert(tmin != null),
        assert(tmax != null),
        assert(condition != null),
        assert(conditionKey != null),
        assert(icon != null),
        assert(iconBig != null),
        assert(hourlyData != null);

  factory _$ForecastDayData.fromJson(Map<String, dynamic> json) =>
      _$_$ForecastDayDataFromJson(json);

  @override
  final String date;
  @override
  @JsonKey(name: "day_short")
  final String dayShort;
  @override
  @JsonKey(name: "day_long")
  final String dayLong;
  @override
  final int tmin;
  @override
  final int tmax;
  @override
  final String condition;
  @override
  @JsonKey(name: "condition_key")
  final String conditionKey;
  @override
  final String icon;
  @override
  @JsonKey(name: "icon_big")
  final String iconBig;
  @override
  @JsonKey(name: "hourly_data")
  final Map<String, HourlyData> hourlyData;

  @override
  String toString() {
    return 'ForecastDay(date: $date, dayShort: $dayShort, dayLong: $dayLong, tmin: $tmin, tmax: $tmax, condition: $condition, conditionKey: $conditionKey, icon: $icon, iconBig: $iconBig, hourlyData: $hourlyData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ForecastDayData &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.dayShort, dayShort) ||
                const DeepCollectionEquality()
                    .equals(other.dayShort, dayShort)) &&
            (identical(other.dayLong, dayLong) ||
                const DeepCollectionEquality()
                    .equals(other.dayLong, dayLong)) &&
            (identical(other.tmin, tmin) ||
                const DeepCollectionEquality().equals(other.tmin, tmin)) &&
            (identical(other.tmax, tmax) ||
                const DeepCollectionEquality().equals(other.tmax, tmax)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.conditionKey, conditionKey) ||
                const DeepCollectionEquality()
                    .equals(other.conditionKey, conditionKey)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.iconBig, iconBig) ||
                const DeepCollectionEquality()
                    .equals(other.iconBig, iconBig)) &&
            (identical(other.hourlyData, hourlyData) ||
                const DeepCollectionEquality()
                    .equals(other.hourlyData, hourlyData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(dayShort) ^
      const DeepCollectionEquality().hash(dayLong) ^
      const DeepCollectionEquality().hash(tmin) ^
      const DeepCollectionEquality().hash(tmax) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(conditionKey) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(iconBig) ^
      const DeepCollectionEquality().hash(hourlyData);

  @override
  $ForecastDayDataCopyWith<ForecastDayData> get copyWith =>
      _$ForecastDayDataCopyWithImpl<ForecastDayData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$ForecastDayDataToJson(this);
  }
}

abstract class ForecastDayData implements ForecastDay {
  const factory ForecastDayData(
          String date,
          @JsonKey(name: "day_short") String dayShort,
          @JsonKey(name: "day_long") String dayLong,
          int tmin,
          int tmax,
          String condition,
          @JsonKey(name: "condition_key") String conditionKey,
          String icon,
          @JsonKey(name: "icon_big") String iconBig,
          @JsonKey(name: "hourly_data") Map<String, HourlyData> hourlyData) =
      _$ForecastDayData;

  factory ForecastDayData.fromJson(Map<String, dynamic> json) =
      _$ForecastDayData.fromJson;

  @override
  String get date;
  @override
  @JsonKey(name: "day_short")
  String get dayShort;
  @override
  @JsonKey(name: "day_long")
  String get dayLong;
  @override
  int get tmin;
  @override
  int get tmax;
  @override
  String get condition;
  @override
  @JsonKey(name: "condition_key")
  String get conditionKey;
  @override
  String get icon;
  @override
  @JsonKey(name: "icon_big")
  String get iconBig;
  @override
  @JsonKey(name: "hourly_data")
  Map<String, HourlyData> get hourlyData;
  @override
  $ForecastDayDataCopyWith<ForecastDayData> get copyWith;
}

HourlyData _$HourlyDataFromJson(Map<String, dynamic> json) {
  return HourlyDataData.fromJson(json);
}

/// @nodoc
class _$HourlyDataTearOff {
  const _$HourlyDataTearOff();

// ignore: unused_element
  HourlyDataData call(
      @JsonKey(name: "ICON") String icon,
      @JsonKey(name: "CONDITION") String condition,
      @JsonKey(name: "CONDITION_KEY") String conditionKey,
      @JsonKey(name: "TMP2m") double tMP2m) {
    return HourlyDataData(
      icon,
      condition,
      conditionKey,
      tMP2m,
    );
  }

// ignore: unused_element
  HourlyData fromJson(Map<String, Object> json) {
    return HourlyData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HourlyData = _$HourlyDataTearOff();

/// @nodoc
mixin _$HourlyData {
  @JsonKey(name: "ICON")
  String get icon;
  @JsonKey(name: "CONDITION")
  String get condition;
  @JsonKey(name: "CONDITION_KEY")
  String get conditionKey;
  @JsonKey(name: "TMP2m")
  double get tMP2m;

  Map<String, dynamic> toJson();
  $HourlyDataCopyWith<HourlyData> get copyWith;
}

/// @nodoc
abstract class $HourlyDataCopyWith<$Res> {
  factory $HourlyDataCopyWith(
          HourlyData value, $Res Function(HourlyData) then) =
      _$HourlyDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "ICON") String icon,
      @JsonKey(name: "CONDITION") String condition,
      @JsonKey(name: "CONDITION_KEY") String conditionKey,
      @JsonKey(name: "TMP2m") double tMP2m});
}

/// @nodoc
class _$HourlyDataCopyWithImpl<$Res> implements $HourlyDataCopyWith<$Res> {
  _$HourlyDataCopyWithImpl(this._value, this._then);

  final HourlyData _value;
  // ignore: unused_field
  final $Res Function(HourlyData) _then;

  @override
  $Res call({
    Object icon = freezed,
    Object condition = freezed,
    Object conditionKey = freezed,
    Object tMP2m = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed ? _value.icon : icon as String,
      condition: condition == freezed ? _value.condition : condition as String,
      conditionKey: conditionKey == freezed
          ? _value.conditionKey
          : conditionKey as String,
      tMP2m: tMP2m == freezed ? _value.tMP2m : tMP2m as double,
    ));
  }
}

/// @nodoc
abstract class $HourlyDataDataCopyWith<$Res>
    implements $HourlyDataCopyWith<$Res> {
  factory $HourlyDataDataCopyWith(
          HourlyDataData value, $Res Function(HourlyDataData) then) =
      _$HourlyDataDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "ICON") String icon,
      @JsonKey(name: "CONDITION") String condition,
      @JsonKey(name: "CONDITION_KEY") String conditionKey,
      @JsonKey(name: "TMP2m") double tMP2m});
}

/// @nodoc
class _$HourlyDataDataCopyWithImpl<$Res> extends _$HourlyDataCopyWithImpl<$Res>
    implements $HourlyDataDataCopyWith<$Res> {
  _$HourlyDataDataCopyWithImpl(
      HourlyDataData _value, $Res Function(HourlyDataData) _then)
      : super(_value, (v) => _then(v as HourlyDataData));

  @override
  HourlyDataData get _value => super._value as HourlyDataData;

  @override
  $Res call({
    Object icon = freezed,
    Object condition = freezed,
    Object conditionKey = freezed,
    Object tMP2m = freezed,
  }) {
    return _then(HourlyDataData(
      icon == freezed ? _value.icon : icon as String,
      condition == freezed ? _value.condition : condition as String,
      conditionKey == freezed ? _value.conditionKey : conditionKey as String,
      tMP2m == freezed ? _value.tMP2m : tMP2m as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$HourlyDataData implements HourlyDataData {
  const _$HourlyDataData(
      @JsonKey(name: "ICON") this.icon,
      @JsonKey(name: "CONDITION") this.condition,
      @JsonKey(name: "CONDITION_KEY") this.conditionKey,
      @JsonKey(name: "TMP2m") this.tMP2m)
      : assert(icon != null),
        assert(condition != null),
        assert(conditionKey != null),
        assert(tMP2m != null);

  factory _$HourlyDataData.fromJson(Map<String, dynamic> json) =>
      _$_$HourlyDataDataFromJson(json);

  @override
  @JsonKey(name: "ICON")
  final String icon;
  @override
  @JsonKey(name: "CONDITION")
  final String condition;
  @override
  @JsonKey(name: "CONDITION_KEY")
  final String conditionKey;
  @override
  @JsonKey(name: "TMP2m")
  final double tMP2m;

  @override
  String toString() {
    return 'HourlyData(icon: $icon, condition: $condition, conditionKey: $conditionKey, tMP2m: $tMP2m)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HourlyDataData &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.condition, condition) ||
                const DeepCollectionEquality()
                    .equals(other.condition, condition)) &&
            (identical(other.conditionKey, conditionKey) ||
                const DeepCollectionEquality()
                    .equals(other.conditionKey, conditionKey)) &&
            (identical(other.tMP2m, tMP2m) ||
                const DeepCollectionEquality().equals(other.tMP2m, tMP2m)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(condition) ^
      const DeepCollectionEquality().hash(conditionKey) ^
      const DeepCollectionEquality().hash(tMP2m);

  @override
  $HourlyDataDataCopyWith<HourlyDataData> get copyWith =>
      _$HourlyDataDataCopyWithImpl<HourlyDataData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$HourlyDataDataToJson(this);
  }
}

abstract class HourlyDataData implements HourlyData {
  const factory HourlyDataData(
      @JsonKey(name: "ICON") String icon,
      @JsonKey(name: "CONDITION") String condition,
      @JsonKey(name: "CONDITION_KEY") String conditionKey,
      @JsonKey(name: "TMP2m") double tMP2m) = _$HourlyDataData;

  factory HourlyDataData.fromJson(Map<String, dynamic> json) =
      _$HourlyDataData.fromJson;

  @override
  @JsonKey(name: "ICON")
  String get icon;
  @override
  @JsonKey(name: "CONDITION")
  String get condition;
  @override
  @JsonKey(name: "CONDITION_KEY")
  String get conditionKey;
  @override
  @JsonKey(name: "TMP2m")
  double get tMP2m;
  @override
  $HourlyDataDataCopyWith<HourlyDataData> get copyWith;
}
