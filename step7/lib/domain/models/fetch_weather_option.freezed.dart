// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_weather_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchWeatherOptionTearOff {
  const _$FetchWeatherOptionTearOff();

// ignore: unused_element
  AroundMe aroundMe() {
    return const AroundMe();
  }

// ignore: unused_element
  InCity inCity(String cityUrl) {
    return InCity(
      cityUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchWeatherOption = _$FetchWeatherOptionTearOff();

/// @nodoc
mixin _$FetchWeatherOption {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result aroundMe(),
    @required Result inCity(String cityUrl),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result aroundMe(),
    Result inCity(String cityUrl),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result aroundMe(AroundMe value),
    @required Result inCity(InCity value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result aroundMe(AroundMe value),
    Result inCity(InCity value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FetchWeatherOptionCopyWith<$Res> {
  factory $FetchWeatherOptionCopyWith(
          FetchWeatherOption value, $Res Function(FetchWeatherOption) then) =
      _$FetchWeatherOptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchWeatherOptionCopyWithImpl<$Res>
    implements $FetchWeatherOptionCopyWith<$Res> {
  _$FetchWeatherOptionCopyWithImpl(this._value, this._then);

  final FetchWeatherOption _value;
  // ignore: unused_field
  final $Res Function(FetchWeatherOption) _then;
}

/// @nodoc
abstract class $AroundMeCopyWith<$Res> {
  factory $AroundMeCopyWith(AroundMe value, $Res Function(AroundMe) then) =
      _$AroundMeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AroundMeCopyWithImpl<$Res>
    extends _$FetchWeatherOptionCopyWithImpl<$Res>
    implements $AroundMeCopyWith<$Res> {
  _$AroundMeCopyWithImpl(AroundMe _value, $Res Function(AroundMe) _then)
      : super(_value, (v) => _then(v as AroundMe));

  @override
  AroundMe get _value => super._value as AroundMe;
}

/// @nodoc
class _$AroundMe implements AroundMe {
  const _$AroundMe();

  @override
  String toString() {
    return 'FetchWeatherOption.aroundMe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AroundMe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result aroundMe(),
    @required Result inCity(String cityUrl),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return aroundMe();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result aroundMe(),
    Result inCity(String cityUrl),
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
    @required Result aroundMe(AroundMe value),
    @required Result inCity(InCity value),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return aroundMe(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result aroundMe(AroundMe value),
    Result inCity(InCity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (aroundMe != null) {
      return aroundMe(this);
    }
    return orElse();
  }
}

abstract class AroundMe implements FetchWeatherOption {
  const factory AroundMe() = _$AroundMe;
}

/// @nodoc
abstract class $InCityCopyWith<$Res> {
  factory $InCityCopyWith(InCity value, $Res Function(InCity) then) =
      _$InCityCopyWithImpl<$Res>;
  $Res call({String cityUrl});
}

/// @nodoc
class _$InCityCopyWithImpl<$Res> extends _$FetchWeatherOptionCopyWithImpl<$Res>
    implements $InCityCopyWith<$Res> {
  _$InCityCopyWithImpl(InCity _value, $Res Function(InCity) _then)
      : super(_value, (v) => _then(v as InCity));

  @override
  InCity get _value => super._value as InCity;

  @override
  $Res call({
    Object cityUrl = freezed,
  }) {
    return _then(InCity(
      cityUrl == freezed ? _value.cityUrl : cityUrl as String,
    ));
  }
}

/// @nodoc
class _$InCity implements InCity {
  const _$InCity(this.cityUrl) : assert(cityUrl != null);

  @override
  final String cityUrl;

  @override
  String toString() {
    return 'FetchWeatherOption.inCity(cityUrl: $cityUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InCity &&
            (identical(other.cityUrl, cityUrl) ||
                const DeepCollectionEquality().equals(other.cityUrl, cityUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityUrl);

  @override
  $InCityCopyWith<InCity> get copyWith =>
      _$InCityCopyWithImpl<InCity>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result aroundMe(),
    @required Result inCity(String cityUrl),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return inCity(cityUrl);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result aroundMe(),
    Result inCity(String cityUrl),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inCity != null) {
      return inCity(cityUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result aroundMe(AroundMe value),
    @required Result inCity(InCity value),
  }) {
    assert(aroundMe != null);
    assert(inCity != null);
    return inCity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result aroundMe(AroundMe value),
    Result inCity(InCity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inCity != null) {
      return inCity(this);
    }
    return orElse();
  }
}

abstract class InCity implements FetchWeatherOption {
  const factory InCity(String cityUrl) = _$InCity;

  String get cityUrl;
  $InCityCopyWith<InCity> get copyWith;
}
