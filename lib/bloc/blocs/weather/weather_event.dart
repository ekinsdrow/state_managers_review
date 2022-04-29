part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetch({
    required double lat,
    required double lon,
  }) = _Fetch;
}
