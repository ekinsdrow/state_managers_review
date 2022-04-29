import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_managers_review/bloc/data/models/weather.dart';
import 'package:state_managers_review/bloc/data/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({
    required this.weatherRepository,
  }) : super(const _Loading()) {
    on<WeatherEvent>(_fetch);
  }

  final IWeatherRepository weatherRepository;

  FutureOr<void> _fetch(
    WeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const _Loading());
    Weather? weather;

    try {
      weather = await weatherRepository.getWeather(
        lat: event.lat,
        lon: event.lon,
      );
    } catch (e) {
      emit(_Error(error: e.toString()));
    }

    if (weather != null) {
      emit(
      _Success(weather: weather),
    );
    }
  }
}
