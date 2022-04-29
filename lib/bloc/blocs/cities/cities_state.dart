part of 'cities_bloc.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.loading() = _Loading;
  const factory CitiesState.error({required String error}) = _Error;
  const factory CitiesState.success({required List<City> cities}) = _Success;
}
