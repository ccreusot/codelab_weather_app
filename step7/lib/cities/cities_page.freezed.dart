// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cities_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CitiesPageStateTearOff {
  const _$CitiesPageStateTearOff();

// ignore: unused_element
  CitiesLoadingState loading() {
    return const CitiesLoadingState();
  }

// ignore: unused_element
  CitiesSuccessState success(List<City> cities) {
    return CitiesSuccessState(
      cities,
    );
  }

// ignore: unused_element
  CitiesErrorState error([String message]) {
    return CitiesErrorState(
      message,
    );
  }

// ignore: unused_element
  CitiesAddedToWatchListState cityAddedToWatchList() {
    return const CitiesAddedToWatchListState();
  }
}

/// @nodoc
// ignore: unused_element
const $CitiesPageState = _$CitiesPageStateTearOff();

/// @nodoc
mixin _$CitiesPageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<City> cities),
    @required Result error(String message),
    @required Result cityAddedToWatchList(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<City> cities),
    Result error(String message),
    Result cityAddedToWatchList(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(CitiesLoadingState value),
    @required Result success(CitiesSuccessState value),
    @required Result error(CitiesErrorState value),
    @required Result cityAddedToWatchList(CitiesAddedToWatchListState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(CitiesLoadingState value),
    Result success(CitiesSuccessState value),
    Result error(CitiesErrorState value),
    Result cityAddedToWatchList(CitiesAddedToWatchListState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CitiesPageStateCopyWith<$Res> {
  factory $CitiesPageStateCopyWith(
          CitiesPageState value, $Res Function(CitiesPageState) then) =
      _$CitiesPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesPageStateCopyWithImpl<$Res>
    implements $CitiesPageStateCopyWith<$Res> {
  _$CitiesPageStateCopyWithImpl(this._value, this._then);

  final CitiesPageState _value;
  // ignore: unused_field
  final $Res Function(CitiesPageState) _then;
}

/// @nodoc
abstract class $CitiesLoadingStateCopyWith<$Res> {
  factory $CitiesLoadingStateCopyWith(
          CitiesLoadingState value, $Res Function(CitiesLoadingState) then) =
      _$CitiesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesLoadingStateCopyWithImpl<$Res>
    extends _$CitiesPageStateCopyWithImpl<$Res>
    implements $CitiesLoadingStateCopyWith<$Res> {
  _$CitiesLoadingStateCopyWithImpl(
      CitiesLoadingState _value, $Res Function(CitiesLoadingState) _then)
      : super(_value, (v) => _then(v as CitiesLoadingState));

  @override
  CitiesLoadingState get _value => super._value as CitiesLoadingState;
}

/// @nodoc
class _$CitiesLoadingState implements CitiesLoadingState {
  const _$CitiesLoadingState();

  @override
  String toString() {
    return 'CitiesPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CitiesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<City> cities),
    @required Result error(String message),
    @required Result cityAddedToWatchList(),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<City> cities),
    Result error(String message),
    Result cityAddedToWatchList(),
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
    @required Result loading(CitiesLoadingState value),
    @required Result success(CitiesSuccessState value),
    @required Result error(CitiesErrorState value),
    @required Result cityAddedToWatchList(CitiesAddedToWatchListState value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(CitiesLoadingState value),
    Result success(CitiesSuccessState value),
    Result error(CitiesErrorState value),
    Result cityAddedToWatchList(CitiesAddedToWatchListState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CitiesLoadingState implements CitiesPageState {
  const factory CitiesLoadingState() = _$CitiesLoadingState;
}

/// @nodoc
abstract class $CitiesSuccessStateCopyWith<$Res> {
  factory $CitiesSuccessStateCopyWith(
          CitiesSuccessState value, $Res Function(CitiesSuccessState) then) =
      _$CitiesSuccessStateCopyWithImpl<$Res>;
  $Res call({List<City> cities});
}

/// @nodoc
class _$CitiesSuccessStateCopyWithImpl<$Res>
    extends _$CitiesPageStateCopyWithImpl<$Res>
    implements $CitiesSuccessStateCopyWith<$Res> {
  _$CitiesSuccessStateCopyWithImpl(
      CitiesSuccessState _value, $Res Function(CitiesSuccessState) _then)
      : super(_value, (v) => _then(v as CitiesSuccessState));

  @override
  CitiesSuccessState get _value => super._value as CitiesSuccessState;

  @override
  $Res call({
    Object cities = freezed,
  }) {
    return _then(CitiesSuccessState(
      cities == freezed ? _value.cities : cities as List<City>,
    ));
  }
}

/// @nodoc
class _$CitiesSuccessState implements CitiesSuccessState {
  const _$CitiesSuccessState(this.cities) : assert(cities != null);

  @override
  final List<City> cities;

  @override
  String toString() {
    return 'CitiesPageState.success(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CitiesSuccessState &&
            (identical(other.cities, cities) ||
                const DeepCollectionEquality().equals(other.cities, cities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cities);

  @override
  $CitiesSuccessStateCopyWith<CitiesSuccessState> get copyWith =>
      _$CitiesSuccessStateCopyWithImpl<CitiesSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<City> cities),
    @required Result error(String message),
    @required Result cityAddedToWatchList(),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return success(cities);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<City> cities),
    Result error(String message),
    Result cityAddedToWatchList(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(CitiesLoadingState value),
    @required Result success(CitiesSuccessState value),
    @required Result error(CitiesErrorState value),
    @required Result cityAddedToWatchList(CitiesAddedToWatchListState value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(CitiesLoadingState value),
    Result success(CitiesSuccessState value),
    Result error(CitiesErrorState value),
    Result cityAddedToWatchList(CitiesAddedToWatchListState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CitiesSuccessState implements CitiesPageState {
  const factory CitiesSuccessState(List<City> cities) = _$CitiesSuccessState;

  List<City> get cities;
  $CitiesSuccessStateCopyWith<CitiesSuccessState> get copyWith;
}

/// @nodoc
abstract class $CitiesErrorStateCopyWith<$Res> {
  factory $CitiesErrorStateCopyWith(
          CitiesErrorState value, $Res Function(CitiesErrorState) then) =
      _$CitiesErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CitiesErrorStateCopyWithImpl<$Res>
    extends _$CitiesPageStateCopyWithImpl<$Res>
    implements $CitiesErrorStateCopyWith<$Res> {
  _$CitiesErrorStateCopyWithImpl(
      CitiesErrorState _value, $Res Function(CitiesErrorState) _then)
      : super(_value, (v) => _then(v as CitiesErrorState));

  @override
  CitiesErrorState get _value => super._value as CitiesErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(CitiesErrorState(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$CitiesErrorState implements CitiesErrorState {
  const _$CitiesErrorState([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'CitiesPageState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CitiesErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $CitiesErrorStateCopyWith<CitiesErrorState> get copyWith =>
      _$CitiesErrorStateCopyWithImpl<CitiesErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<City> cities),
    @required Result error(String message),
    @required Result cityAddedToWatchList(),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<City> cities),
    Result error(String message),
    Result cityAddedToWatchList(),
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
    @required Result loading(CitiesLoadingState value),
    @required Result success(CitiesSuccessState value),
    @required Result error(CitiesErrorState value),
    @required Result cityAddedToWatchList(CitiesAddedToWatchListState value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(CitiesLoadingState value),
    Result success(CitiesSuccessState value),
    Result error(CitiesErrorState value),
    Result cityAddedToWatchList(CitiesAddedToWatchListState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CitiesErrorState implements CitiesPageState {
  const factory CitiesErrorState([String message]) = _$CitiesErrorState;

  String get message;
  $CitiesErrorStateCopyWith<CitiesErrorState> get copyWith;
}

/// @nodoc
abstract class $CitiesAddedToWatchListStateCopyWith<$Res> {
  factory $CitiesAddedToWatchListStateCopyWith(
          CitiesAddedToWatchListState value,
          $Res Function(CitiesAddedToWatchListState) then) =
      _$CitiesAddedToWatchListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesAddedToWatchListStateCopyWithImpl<$Res>
    extends _$CitiesPageStateCopyWithImpl<$Res>
    implements $CitiesAddedToWatchListStateCopyWith<$Res> {
  _$CitiesAddedToWatchListStateCopyWithImpl(CitiesAddedToWatchListState _value,
      $Res Function(CitiesAddedToWatchListState) _then)
      : super(_value, (v) => _then(v as CitiesAddedToWatchListState));

  @override
  CitiesAddedToWatchListState get _value =>
      super._value as CitiesAddedToWatchListState;
}

/// @nodoc
class _$CitiesAddedToWatchListState implements CitiesAddedToWatchListState {
  const _$CitiesAddedToWatchListState();

  @override
  String toString() {
    return 'CitiesPageState.cityAddedToWatchList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CitiesAddedToWatchListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result success(List<City> cities),
    @required Result error(String message),
    @required Result cityAddedToWatchList(),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return cityAddedToWatchList();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result success(List<City> cities),
    Result error(String message),
    Result cityAddedToWatchList(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityAddedToWatchList != null) {
      return cityAddedToWatchList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(CitiesLoadingState value),
    @required Result success(CitiesSuccessState value),
    @required Result error(CitiesErrorState value),
    @required Result cityAddedToWatchList(CitiesAddedToWatchListState value),
  }) {
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    assert(cityAddedToWatchList != null);
    return cityAddedToWatchList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(CitiesLoadingState value),
    Result success(CitiesSuccessState value),
    Result error(CitiesErrorState value),
    Result cityAddedToWatchList(CitiesAddedToWatchListState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cityAddedToWatchList != null) {
      return cityAddedToWatchList(this);
    }
    return orElse();
  }
}

abstract class CitiesAddedToWatchListState implements CitiesPageState {
  const factory CitiesAddedToWatchListState() = _$CitiesAddedToWatchListState;
}
