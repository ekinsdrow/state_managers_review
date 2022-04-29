import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_managers_review/bloc/data/models/city.dart';
import 'package:state_managers_review/bloc/data/repositories/cities_repository.dart';

part 'cities_event.dart';
part 'cities_state.dart';
part 'cities_bloc.freezed.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc({
    required this.citiesRepository,
  }) : super(const _Loading()) {
    on<CitiesEvent>(_fetch);
  }

  final ICitiesRepository citiesRepository;

  FutureOr<void> _fetch(
    CitiesEvent event,
    Emitter<CitiesState> emit,
  ) async {
    emit(const _Loading());
    List<City>? cities;

    try {
      cities = await citiesRepository.getCities();
    } catch (e) {
      emit(_Error(error: e.toString()));
    }

    if (cities != null) {
      emit(
        _Success(cities: cities),
      );
    }
  }
}
