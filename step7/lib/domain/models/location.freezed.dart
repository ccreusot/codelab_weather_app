// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocationTearOff {
  const _$LocationTearOff();

// ignore: unused_element
  LocationData call(double latitude, double longitude) {
    return LocationData(
      latitude,
      longitude,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Location = _$LocationTearOff();

/// @nodoc
mixin _$Location {
  double get latitude;
  double get longitude;

  $LocationCopyWith<Location> get copyWith;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  final Location _value;
  // ignore: unused_field
  final $Res Function(Location) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res> extends _$LocationCopyWithImpl<$Res>
    implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(
      LocationData _value, $Res Function(LocationData) _then)
      : super(_value, (v) => _then(v as LocationData));

  @override
  LocationData get _value => super._value as LocationData;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(LocationData(
      latitude == freezed ? _value.latitude : latitude as double,
      longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
class _$LocationData implements LocationData {
  const _$LocationData(this.latitude, this.longitude)
      : assert(latitude != null),
        assert(longitude != null);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Location(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationData &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @override
  $LocationDataCopyWith<LocationData> get copyWith =>
      _$LocationDataCopyWithImpl<LocationData>(this, _$identity);
}

abstract class LocationData implements Location {
  const factory LocationData(double latitude, double longitude) =
      _$LocationData;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  $LocationDataCopyWith<LocationData> get copyWith;
}

/// @nodoc
class _$LocationStatusTearOff {
  const _$LocationStatusTearOff();

// ignore: unused_element
  LocationSuccess success(Location location) {
    return LocationSuccess(
      location,
    );
  }

// ignore: unused_element
  LocationError error([String message]) {
    return LocationError(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocationStatus = _$LocationStatusTearOff();

/// @nodoc
mixin _$LocationStatus {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(Location location),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(Location location),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(LocationSuccess value),
    @required Result error(LocationError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(LocationSuccess value),
    Result error(LocationError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LocationStatusCopyWith<$Res> {
  factory $LocationStatusCopyWith(
          LocationStatus value, $Res Function(LocationStatus) then) =
      _$LocationStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStatusCopyWithImpl<$Res>
    implements $LocationStatusCopyWith<$Res> {
  _$LocationStatusCopyWithImpl(this._value, this._then);

  final LocationStatus _value;
  // ignore: unused_field
  final $Res Function(LocationStatus) _then;
}

/// @nodoc
abstract class $LocationSuccessCopyWith<$Res> {
  factory $LocationSuccessCopyWith(
          LocationSuccess value, $Res Function(LocationSuccess) then) =
      _$LocationSuccessCopyWithImpl<$Res>;
  $Res call({Location location});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$LocationSuccessCopyWithImpl<$Res>
    extends _$LocationStatusCopyWithImpl<$Res>
    implements $LocationSuccessCopyWith<$Res> {
  _$LocationSuccessCopyWithImpl(
      LocationSuccess _value, $Res Function(LocationSuccess) _then)
      : super(_value, (v) => _then(v as LocationSuccess));

  @override
  LocationSuccess get _value => super._value as LocationSuccess;

  @override
  $Res call({
    Object location = freezed,
  }) {
    return _then(LocationSuccess(
      location == freezed ? _value.location : location as Location,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    if (_value.location == null) {
      return null;
    }
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
class _$LocationSuccess implements LocationSuccess {
  const _$LocationSuccess(this.location) : assert(location != null);

  @override
  final Location location;

  @override
  String toString() {
    return 'LocationStatus.success(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationSuccess &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @override
  $LocationSuccessCopyWith<LocationSuccess> get copyWith =>
      _$LocationSuccessCopyWithImpl<LocationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(Location location),
    @required Result error(String message),
  }) {
    assert(success != null);
    assert(error != null);
    return success(location);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(Location location),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(LocationSuccess value),
    @required Result error(LocationError value),
  }) {
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(LocationSuccess value),
    Result error(LocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LocationSuccess implements LocationStatus {
  const factory LocationSuccess(Location location) = _$LocationSuccess;

  Location get location;
  $LocationSuccessCopyWith<LocationSuccess> get copyWith;
}

/// @nodoc
abstract class $LocationErrorCopyWith<$Res> {
  factory $LocationErrorCopyWith(
          LocationError value, $Res Function(LocationError) then) =
      _$LocationErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LocationErrorCopyWithImpl<$Res>
    extends _$LocationStatusCopyWithImpl<$Res>
    implements $LocationErrorCopyWith<$Res> {
  _$LocationErrorCopyWithImpl(
      LocationError _value, $Res Function(LocationError) _then)
      : super(_value, (v) => _then(v as LocationError));

  @override
  LocationError get _value => super._value as LocationError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(LocationError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$LocationError implements LocationError {
  const _$LocationError([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'LocationStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocationError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $LocationErrorCopyWith<LocationError> get copyWith =>
      _$LocationErrorCopyWithImpl<LocationError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(Location location),
    @required Result error(String message),
  }) {
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(Location location),
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
    @required Result success(LocationSuccess value),
    @required Result error(LocationError value),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(LocationSuccess value),
    Result error(LocationError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LocationError implements LocationStatus {
  const factory LocationError([String message]) = _$LocationError;

  String get message;
  $LocationErrorCopyWith<LocationError> get copyWith;
}
