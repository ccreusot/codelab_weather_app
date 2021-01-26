// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CityTearOff {
  const _$CityTearOff();

// ignore: unused_element
  CityData call(String name, String country, String url) {
    return CityData(
      name,
      country,
      url,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $City = _$CityTearOff();

/// @nodoc
mixin _$City {
  String get name;
  String get country;
  String get url;

  @JsonKey(ignore: true)
  $CityCopyWith<City> get copyWith;
}

/// @nodoc
abstract class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) then) =
      _$CityCopyWithImpl<$Res>;
  $Res call({String name, String country, String url});
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
    Object country = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
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
  $Res call({String name, String country, String url});
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
    Object country = freezed,
    Object url = freezed,
  }) {
    return _then(CityData(
      name == freezed ? _value.name : name as String,
      country == freezed ? _value.country : country as String,
      url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$CityData implements CityData {
  const _$CityData(this.name, this.country, this.url)
      : assert(name != null),
        assert(country != null),
        assert(url != null);

  @override
  final String name;
  @override
  final String country;
  @override
  final String url;

  @override
  String toString() {
    return 'City(name: $name, country: $country, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $CityDataCopyWith<CityData> get copyWith =>
      _$CityDataCopyWithImpl<CityData>(this, _$identity);
}

abstract class CityData implements City {
  const factory CityData(String name, String country, String url) = _$CityData;

  @override
  String get name;
  @override
  String get country;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  $CityDataCopyWith<CityData> get copyWith;
}

/// @nodoc
class _$CitiesStatusTearOff {
  const _$CitiesStatusTearOff();

// ignore: unused_element
  CitiesSuccess success(List<City> city) {
    return CitiesSuccess(
      city,
    );
  }

// ignore: unused_element
  CitiesError error([String message]) {
    return CitiesError(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CitiesStatus = _$CitiesStatusTearOff();

/// @nodoc
mixin _$CitiesStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(List<City> city),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(List<City> city),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(CitiesSuccess value),
    @required TResult error(CitiesError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(CitiesSuccess value),
    TResult error(CitiesError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CitiesStatusCopyWith<$Res> {
  factory $CitiesStatusCopyWith(
          CitiesStatus value, $Res Function(CitiesStatus) then) =
      _$CitiesStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesStatusCopyWithImpl<$Res> implements $CitiesStatusCopyWith<$Res> {
  _$CitiesStatusCopyWithImpl(this._value, this._then);

  final CitiesStatus _value;
  // ignore: unused_field
  final $Res Function(CitiesStatus) _then;
}

/// @nodoc
abstract class $CitiesSuccessCopyWith<$Res> {
  factory $CitiesSuccessCopyWith(
          CitiesSuccess value, $Res Function(CitiesSuccess) then) =
      _$CitiesSuccessCopyWithImpl<$Res>;
  $Res call({List<City> city});
}

/// @nodoc
class _$CitiesSuccessCopyWithImpl<$Res> extends _$CitiesStatusCopyWithImpl<$Res>
    implements $CitiesSuccessCopyWith<$Res> {
  _$CitiesSuccessCopyWithImpl(
      CitiesSuccess _value, $Res Function(CitiesSuccess) _then)
      : super(_value, (v) => _then(v as CitiesSuccess));

  @override
  CitiesSuccess get _value => super._value as CitiesSuccess;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(CitiesSuccess(
      city == freezed ? _value.city : city as List<City>,
    ));
  }
}

/// @nodoc
class _$CitiesSuccess implements CitiesSuccess {
  const _$CitiesSuccess(this.city) : assert(city != null);

  @override
  final List<City> city;

  @override
  String toString() {
    return 'CitiesStatus.success(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CitiesSuccess &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $CitiesSuccessCopyWith<CitiesSuccess> get copyWith =>
      _$CitiesSuccessCopyWithImpl<CitiesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(List<City> city),
    @required TResult error(String message),
  }) {
    assert(success != null);
    assert(error != null);
    return success(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(List<City> city),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(CitiesSuccess value),
    @required TResult error(CitiesError value),
  }) {
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(CitiesSuccess value),
    TResult error(CitiesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CitiesSuccess implements CitiesStatus {
  const factory CitiesSuccess(List<City> city) = _$CitiesSuccess;

  List<City> get city;
  @JsonKey(ignore: true)
  $CitiesSuccessCopyWith<CitiesSuccess> get copyWith;
}

/// @nodoc
abstract class $CitiesErrorCopyWith<$Res> {
  factory $CitiesErrorCopyWith(
          CitiesError value, $Res Function(CitiesError) then) =
      _$CitiesErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CitiesErrorCopyWithImpl<$Res> extends _$CitiesStatusCopyWithImpl<$Res>
    implements $CitiesErrorCopyWith<$Res> {
  _$CitiesErrorCopyWithImpl(
      CitiesError _value, $Res Function(CitiesError) _then)
      : super(_value, (v) => _then(v as CitiesError));

  @override
  CitiesError get _value => super._value as CitiesError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(CitiesError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$CitiesError implements CitiesError {
  const _$CitiesError([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'CitiesStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CitiesError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $CitiesErrorCopyWith<CitiesError> get copyWith =>
      _$CitiesErrorCopyWithImpl<CitiesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult success(List<City> city),
    @required TResult error(String message),
  }) {
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult success(List<City> city),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult success(CitiesSuccess value),
    @required TResult error(CitiesError value),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult success(CitiesSuccess value),
    TResult error(CitiesError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CitiesError implements CitiesStatus {
  const factory CitiesError([String message]) = _$CitiesError;

  String get message;
  @JsonKey(ignore: true)
  $CitiesErrorCopyWith<CitiesError> get copyWith;
}
