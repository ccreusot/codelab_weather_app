// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WeatherPageStateTearOff {
  const _$WeatherPageStateTearOff();

// ignore: unused_element
  WeatherLoadingState loading() {
    return const WeatherLoadingState();
  }

// ignore: unused_element
  WeatherSuccessState success(List<Weather> weathers) {
    return WeatherSuccessState(
      weathers,
    );
  }

// ignore: unused_element
  WeatherErrorState error([String message]) {
    return WeatherErrorState(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherPageState = _$WeatherPageStateTearOff();

/// @nodoc
mixin _$WeatherPageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Weather> weathers),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Weather> weathers),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(WeatherLoadingState value),
    @required Result success(WeatherSuccessState value),
    @required Result error(WeatherErrorState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(WeatherLoadingState value),
    Result success(WeatherSuccessState value),
    Result error(WeatherErrorState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WeatherPageStateCopyWith<$Res> {
  factory $WeatherPageStateCopyWith(
          WeatherPageState value, $Res Function(WeatherPageState) then) =
      _$WeatherPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherPageStateCopyWithImpl<$Res>
    implements $WeatherPageStateCopyWith<$Res> {
  _$WeatherPageStateCopyWithImpl(this._value, this._then);

  final WeatherPageState _value;
  // ignore: unused_field
  final $Res Function(WeatherPageState) _then;
}

/// @nodoc
abstract class $WeatherLoadingStateCopyWith<$Res> {
  factory $WeatherLoadingStateCopyWith(
          WeatherLoadingState value, $Res Function(WeatherLoadingState) then) =
      _$WeatherLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherLoadingStateCopyWithImpl<$Res>
    extends _$WeatherPageStateCopyWithImpl<$Res>
    implements $WeatherLoadingStateCopyWith<$Res> {
  _$WeatherLoadingStateCopyWithImpl(
      WeatherLoadingState _value, $Res Function(WeatherLoadingState) _then)
      : super(_value, (v) => _then(v as WeatherLoadingState));

  @override
  WeatherLoadingState get _value => super._value as WeatherLoadingState;
}

/// @nodoc
class _$WeatherLoadingState implements WeatherLoadingState {
  const _$WeatherLoadingState();

  @override
  String toString() {
    return 'WeatherPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WeatherLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Weather> weathers),
    @required Result error(String message),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Weather> weathers),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(WeatherLoadingState value),
    @required Result success(WeatherSuccessState value),
    @required Result error(WeatherErrorState value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(WeatherLoadingState value),
    Result success(WeatherSuccessState value),
    Result error(WeatherErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WeatherLoadingState implements WeatherPageState {
  const factory WeatherLoadingState() = _$WeatherLoadingState;
}

/// @nodoc
abstract class $WeatherSuccessStateCopyWith<$Res> {
  factory $WeatherSuccessStateCopyWith(
          WeatherSuccessState value, $Res Function(WeatherSuccessState) then) =
      _$WeatherSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Weather> weathers});
}

/// @nodoc
class _$WeatherSuccessStateCopyWithImpl<$Res>
    extends _$WeatherPageStateCopyWithImpl<$Res>
    implements $WeatherSuccessStateCopyWith<$Res> {
  _$WeatherSuccessStateCopyWithImpl(
      WeatherSuccessState _value, $Res Function(WeatherSuccessState) _then)
      : super(_value, (v) => _then(v as WeatherSuccessState));

  @override
  WeatherSuccessState get _value => super._value as WeatherSuccessState;

  @override
  $Res call({
    Object weathers = freezed,
  }) {
    return _then(WeatherSuccessState(
      weathers == freezed ? _value.weathers : weathers as List<Weather>,
    ));
  }
}

/// @nodoc
class _$WeatherSuccessState implements WeatherSuccessState {
  const _$WeatherSuccessState(this.weathers) : assert(weathers != null);

  @override
  final List<Weather> weathers;

  @override
  String toString() {
    return 'WeatherPageState.success(weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherSuccessState &&
            (identical(other.weathers, weathers) ||
                const DeepCollectionEquality()
                    .equals(other.weathers, weathers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weathers);

  @override
  $WeatherSuccessStateCopyWith<WeatherSuccessState> get copyWith =>
      _$WeatherSuccessStateCopyWithImpl<WeatherSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Weather> weathers),
    @required Result error(String message),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(weathers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Weather> weathers),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(weathers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(WeatherLoadingState value),
    @required Result success(WeatherSuccessState value),
    @required Result error(WeatherErrorState value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(WeatherLoadingState value),
    Result success(WeatherSuccessState value),
    Result error(WeatherErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WeatherSuccessState implements WeatherPageState {
  const factory WeatherSuccessState(List<Weather> weathers) =
      _$WeatherSuccessState;

  List<Weather> get weathers;
  $WeatherSuccessStateCopyWith<WeatherSuccessState> get copyWith;
}

/// @nodoc
abstract class $WeatherErrorStateCopyWith<$Res> {
  factory $WeatherErrorStateCopyWith(
          WeatherErrorState value, $Res Function(WeatherErrorState) then) =
      _$WeatherErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$WeatherErrorStateCopyWithImpl<$Res>
    extends _$WeatherPageStateCopyWithImpl<$Res>
    implements $WeatherErrorStateCopyWith<$Res> {
  _$WeatherErrorStateCopyWithImpl(
      WeatherErrorState _value, $Res Function(WeatherErrorState) _then)
      : super(_value, (v) => _then(v as WeatherErrorState));

  @override
  WeatherErrorState get _value => super._value as WeatherErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(WeatherErrorState(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$WeatherErrorState implements WeatherErrorState {
  const _$WeatherErrorState([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherPageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $WeatherErrorStateCopyWith<WeatherErrorState> get copyWith =>
      _$WeatherErrorStateCopyWithImpl<WeatherErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<Weather> weathers),
    @required Result error(String message),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<Weather> weathers),
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
    @required Result loading(WeatherLoadingState value),
    @required Result success(WeatherSuccessState value),
    @required Result error(WeatherErrorState value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(WeatherLoadingState value),
    Result success(WeatherSuccessState value),
    Result error(WeatherErrorState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WeatherErrorState implements WeatherPageState {
  const factory WeatherErrorState([String message]) = _$WeatherErrorState;

  String get message;
  $WeatherErrorStateCopyWith<WeatherErrorState> get copyWith;
}
