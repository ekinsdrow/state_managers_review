part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.success({required Weather weather}) = _Success;
  const factory WeatherState.error({required String error}) = _Error;
}
