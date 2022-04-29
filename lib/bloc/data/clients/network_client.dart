import 'package:dio/dio.dart';
import 'package:state_managers_review/bloc/data/models/city.dart';
import 'package:state_managers_review/bloc/data/models/weather.dart';

class NetworkClient {
  final Dio dio;

  NetworkClient(this.dio);

  Future<List<City>> getCities() async {
    final _response = await dio.get(
      'https://countriesnow.space/api/v0.1/countries/positions/range/q?type=long&min=1&max=10',
    );

    final cities = <City>[];

    for (final city in _response.data['data']) {
      cities.add(City.fromJson(city));
    }

    return cities;
  }

  Future<Weather> getWeather({
    required double lat,
    required double lon,
  }) async {
    final _response = await dio.get(
      'https://fcc-weather-api.glitch.me/api/current?lat=$lat&lon=$lon',
    );

    return Weather.fromJson(
      _response.data,
    );
  }
}
