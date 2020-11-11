// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_weather_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchWeatherTearOff {
  const _$FetchWeatherTearOff();

// ignore: unused_element
  FetchWeatherAroundMe aroundMe() {
    return const FetchWeatherAroundMe();
  }

// ignore: unused_element
  FetchWeatherInCity inCity(String city) {
    return FetchWeatherInCity(
      city,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchWeather = _$FetchWeatherTearOff();

/// @nodoc
mixin _$FetchWeather {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result aroundMe(),
    @required Result inCity(String city),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result aroundMe(),
    Result inCity(String city),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result aroundMe(FetchWeatherAroundMe value),
    @required Result inCity(FetchWeatherInCity value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result aroundMe(FetchWeatherAroundMe value),
    Result inCity(FetchWeatherInCity value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FetchWeatherCopyWith<$Res> {
  factory $FetchWeatherCopyWith(
          FetchWeather value, $Res Function(FetchWeather) then) =
      _$FetchWeatherCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchWeatherCopyWithImpl<$Res> implements $FetchWeatherCopyWith<$Res> {
  _$FetchWeatherCopyWithImpl(this._value, this._then);

  final FetchWeather _value;
  // ignore: unused_field
  final $Res Function(FetchWeather) _then;
}

/// @nodoc
abstract class $FetchWeatherAroundMeCopyWith<$Res> {
  factory $FetchWeatherAroundMeCopyWith(FetchWeatherAroundMe value,
          $Res Function(FetchWeatherAroundMe) then) =
      _$FetchWeatherAroundMeCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchWeatherAroundMeCopyWithImpl<$Res>
    extends _$FetchWeatherCopyWithImpl<$Res>
    implements $FetchWeatherAroundMeCopyWith<$Res> {
  _$FetchWeatherAroundMeCopyWithImpl(
      FetchWeatherAroundMe _value, $Res Function(FetchWeatherAroundMe) _then)
      : super(_value, (v) => _then(v as FetchWeatherAroundMe));

  @override
  FetchWeatherAroundMe get _value => super._value as FetchWeatherAroundMe;
}

/// @nodoc
class _$FetchWeatherAroundMe implements FetchWeatherAroundMe {
  const _$FetchWeatherAroundMe();

  @override
  String toString() {
    return 'FetchWeather.aroundMe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchWeatherAroundMe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result aroundMe(),
    @required Result inCity(String city),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return aroundMe();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result aroundMe(),
    Result inCity(String city),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (aroundMe != null) {
      return aroundMe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result aroundMe(FetchWeatherAroundMe value),
    @required Result inCity(FetchWeatherInCity value),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return aroundMe(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result aroundMe(FetchWeatherAroundMe value),
    Result inCity(FetchWeatherInCity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (aroundMe != null) {
      return aroundMe(this);
    }
    return orElse();
  }
}

abstract class FetchWeatherAroundMe implements FetchWeather {
  const factory FetchWeatherAroundMe() = _$FetchWeatherAroundMe;
}

/// @nodoc
abstract class $FetchWeatherInCityCopyWith<$Res> {
  factory $FetchWeatherInCityCopyWith(
          FetchWeatherInCity value, $Res Function(FetchWeatherInCity) then) =
      _$FetchWeatherInCityCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class _$FetchWeatherInCityCopyWithImpl<$Res>
    extends _$FetchWeatherCopyWithImpl<$Res>
    implements $FetchWeatherInCityCopyWith<$Res> {
  _$FetchWeatherInCityCopyWithImpl(
      FetchWeatherInCity _value, $Res Function(FetchWeatherInCity) _then)
      : super(_value, (v) => _then(v as FetchWeatherInCity));

  @override
  FetchWeatherInCity get _value => super._value as FetchWeatherInCity;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(FetchWeatherInCity(
      city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$FetchWeatherInCity implements FetchWeatherInCity {
  const _$FetchWeatherInCity(this.city) : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'FetchWeather.inCity(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchWeatherInCity &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  $FetchWeatherInCityCopyWith<FetchWeatherInCity> get copyWith =>
      _$FetchWeatherInCityCopyWithImpl<FetchWeatherInCity>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result aroundMe(),
    @required Result inCity(String city),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return inCity(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result aroundMe(),
    Result inCity(String city),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inCity != null) {
      return inCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result aroundMe(FetchWeatherAroundMe value),
    @required Result inCity(FetchWeatherInCity value),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return inCity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result aroundMe(FetchWeatherAroundMe value),
    Result inCity(FetchWeatherInCity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inCity != null) {
      return inCity(this);
    }
    return orElse();
  }
}

abstract class FetchWeatherInCity implements FetchWeather {
  const factory FetchWeatherInCity(String city) = _$FetchWeatherInCity;

  String get city;
  $FetchWeatherInCityCopyWith<FetchWeatherInCity> get copyWith;
}
