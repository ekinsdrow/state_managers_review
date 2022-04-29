// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

  _Fetch fetch({required double lat, required double lon}) {
    return _Fetch(
      lat: lat,
      lon: lon,
    );
  }
}

/// @nodoc
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lon) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
  $Res call({double lat, double lon});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$FetchCopyWith<$Res> implements $WeatherEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lon});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> extends _$WeatherEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_Fetch(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch({required this.lat, required this.lon});

  @override
  final double lat;
  @override
  final double lon;

  @override
  String toString() {
    return 'WeatherEvent.fetch(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fetch &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lon) fetch,
  }) {
    return fetch(lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double lat, double lon)? fetch,
  }) {
    return fetch?.call(lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lon)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(lat, lon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements WeatherEvent {
  const factory _Fetch({required double lat, required double lon}) = _$_Fetch;

  @override
  double get lat;
  @override
  double get lon;
  @override
  @JsonKey(ignore: true)
  _$FetchCopyWith<_Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Success success({required Weather weather}) {
    return _Success(
      weather: weather,
    );
  }

  _Error error({required String error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WeatherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({Weather weather});

  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? weather = freezed,
  }) {
    return _then(_Success(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
    ));
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.weather});

  @override
  final Weather weather;

  @override
  String toString() {
    return 'WeatherState.success(weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function(String error) error,
  }) {
    return success(weather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
  }) {
    return success?.call(weather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(weather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements WeatherState {
  const factory _Success({required Weather weather}) = _$_Success;

  Weather get weather;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'WeatherState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Weather weather) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Weather weather)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WeatherState {
  const factory _Error({required String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
