import 'package:dio/dio.dart';
import 'package:state_managers_review/bloc/data/models/city.dart';

class NetworkClient {
  final Dio dio;

  NetworkClient(this.dio);

  Future<List<City>> getCities() async {
    final _response = await dio.post(
      'https://countriesnow.space/api/v0.1/countries/positions/range',
      data: {
        "type": "long",
        "min": 1,
        "max": 40,
      },
    );

    final cities = <City>[];

    for (final city in _response.data['data']) {
      cities.add(City.fromJson(city));
    }

    return cities;
  }
}
