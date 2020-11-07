// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Cities _$CitiesFromJson(Map<String, dynamic> json) {
  return CitiesData.fromJson(json);
}

/// @nodoc
class _$CitiesTearOff {
  const _$CitiesTearOff();

// ignore: unused_element
  CitiesData call(Map<String, City> cities) {
    return CitiesData(
      cities,
    );
  }

// ignore: unused_element
  Cities fromJson(Map<String, Object> json) {
    return Cities.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Cities = _$CitiesTearOff();

/// @nodoc
mixin _$Cities {
  Map<String, City> get cities;

  Map<String, dynamic> toJson();
  $CitiesCopyWith<Cities> get copyWith;
}

/// @nodoc
abstract class $CitiesCopyWith<$Res> {
  factory $CitiesCopyWith(Cities value, $Res Function(Cities) then) =
      _$CitiesCopyWithImpl<$Res>;
  $Res call({Map<String, City> cities});
}

/// @nodoc
class _$CitiesCopyWithImpl<$Res> implements $CitiesCopyWith<$Res> {
  _$CitiesCopyWithImpl(this._value, this._then);

  final Cities _value;
  // ignore: unused_field
  final $Res Function(Cities) _then;

  @override
  $Res call({
    Object cities = freezed,
  }) {
    return _then(_value.copyWith(
      cities: cities == freezed ? _value.cities : cities as Map<String, City>,
    ));
  }
}

/// @nodoc
abstract class $CitiesDataCopyWith<$Res> implements $CitiesCopyWith<$Res> {
  factory $CitiesDataCopyWith(
          CitiesData value, $Res Function(CitiesData) then) =
      _$CitiesDataCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, City> cities});
}

/// @nodoc
class _$CitiesDataCopyWithImpl<$Res> extends _$CitiesCopyWithImpl<$Res>
    implements $CitiesDataCopyWith<$Res> {
  _$CitiesDataCopyWithImpl(CitiesData _value, $Res Function(CitiesData) _then)
      : super(_value, (v) => _then(v as CitiesData));

  @override
  CitiesData get _value => super._value as CitiesData;

  @override
  $Res call({
    Object cities = freezed,
  }) {
    return _then(CitiesData(
      cities == freezed ? _value.cities : cities as Map<String, City>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$CitiesData implements CitiesData {
  const _$CitiesData(this.cities) : assert(cities != null);

  factory _$CitiesData.fromJson(Map<String, dynamic> json) =>
      _$_$CitiesDataFromJson(json);

  @override
  final Map<String, City> cities;

  @override
  String toString() {
    return 'Cities(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CitiesData &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cities);

  @override
  $CitiesDataCopyWith<CitiesData> get copyWith =>
      _$CitiesDataCopyWithImpl<CitiesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$CitiesDataToJson(this);
  }
}

abstract class CitiesData implements Cities {
  const factory CitiesData(Map<String, City> cities) = _$CitiesData;

  factory CitiesData.fromJson(Map<String, dynamic> json) =
      _$CitiesData.fromJson;

  @override
  Map<String, City> get cities;
  @override
  $CitiesDataCopyWith<CitiesData> get copyWith;
}

City _$CityFromJson(Map<String, dynamic> json) {
  return CityData.fromJson(json);
}

/// @nodoc
class _$CityTearOff {
  const _$CityTearOff();

// ignore: unused_element
  CityData call(
      @HiveField(0) String name,
      @HiveField(1) @nullable @JsonKey(name: "npa") String zipCode,
      @HiveField(2) @nullable String region,
      @HiveField(3) String country,
      @HiveField(4) String url) {
    return CityData(
      name,
      zipCode,
      region,
      country,
      url,
    );
  }

// ignore: unused_element
  City fromJson(Map<String, Object> json) {
    return City.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $City = _$CityTearOff();

/// @nodoc
mixin _$City {
  @HiveField(0)
  String get name;
  @HiveField(1)
  @nullable
  @JsonKey(name: "npa")
  String get zipCode;
  @HiveField(2)
  @nullable
  String get region;
  @HiveField(3)
  String get country;
  @HiveField(4)
  String get url;

  Map<String, dynamic> toJson();
  $CityCopyWith<City> get copyWith;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) @nullable @JsonKey(name: "npa") String zipCode,
      @HiveField(2) @nullable String region,
      @HiveField(3) String country,
      @HiveField(4) String url});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._value, this._then);

  final City _value;
  // ignore: unused_field
  final $Res Function(City) _then;

  @override
  $Res call({
    Object name = freezed,
    Object zipCode = freezed,
    Object region = freezed,
    Object country = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      zipCode: zipCode == freezed ? _value.zipCode : zipCode as String,
      region: region == freezed ? _value.region : region as String,
      country: country == freezed ? _value.country : country as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class $CityDataCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory $CityDataCopyWith(CityData value, $Res Function(CityData) then) =
      _$CityDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) @nullable @JsonKey(name: "npa") String zipCode,
      @HiveField(2) @nullable String region,
      @HiveField(3) String country,
      @HiveField(4) String url});
}

/// @nodoc
class _$CityDataCopyWithImpl<$Res> extends _$CityCopyWithImpl<$Res>
    implements $CityDataCopyWith<$Res> {
  _$CityDataCopyWithImpl(CityData _value, $Res Function(CityData) _then)
      : super(_value, (v) => _then(v as CityData));

  @override
  CityData get _value => super._value as CityData;

  @override
  $Res call({
    Object name = freezed,
    Object zipCode = freezed,
    Object region = freezed,
    Object country = freezed,
    Object url = freezed,
  }) {
    return _then(CityData(
      name == freezed ? _value.name : name as String,
      zipCode == freezed ? _value.zipCode : zipCode as String,
      region == freezed ? _value.region : region as String,
      country == freezed ? _value.country : country as String,
      url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'CityClassAdapter')

/// @nodoc
class _$CityData implements CityData {
  const _$CityData(
      @HiveField(0) this.name,
      @HiveField(1) @nullable @JsonKey(name: "npa") this.zipCode,
      @HiveField(2) @nullable this.region,
      @HiveField(3) this.country,
      @HiveField(4) this.url)
      : assert(name != null),
        assert(country != null),
        assert(url != null);

  factory _$CityData.fromJson(Map<String, dynamic> json) =>
      _$_$CityDataFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  @nullable
  @JsonKey(name: "npa")
  final String zipCode;
  @override
  @HiveField(2)
  @nullable
  final String region;
  @override
  @HiveField(3)
  final String country;
  @override
  @HiveField(4)
  final String url;

  @override
  String toString() {
    return 'City(name: $name, zipCode: $zipCode, region: $region, country: $country, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.zipCode, zipCode) ||
                const DeepCollectionEquality()
                    .equals(other.zipCode, zipCode)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(zipCode) ^
      const DeepCollectionEquality().hash(region) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(url);

  @override
  $CityDataCopyWith<CityData> get copyWith =>
      _$CityDataCopyWithImpl<CityData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$CityDataToJson(this);
  }
}

abstract class CityData implements City {
  const factory CityData(
      @HiveField(0) String name,
      @HiveField(1) @nullable @JsonKey(name: "npa") String zipCode,
      @HiveField(2) @nullable String region,
      @HiveField(3) String country,
      @HiveField(4) String url) = _$CityData;

  factory CityData.fromJson(Map<String, dynamic> json) = _$CityData.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  @nullable
  @JsonKey(name: "npa")
  String get zipCode;
  @override
  @HiveField(2)
  @nullable
  String get region;
  @override
  @HiveField(3)
  String get country;
  @override
  @HiveField(4)
  String get url;
  @override
  $CityDataCopyWith<CityData> get copyWith;
}
