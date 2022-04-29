import 'package:state_managers_review/bloc/data/clients/network_client.dart';
import 'package:state_managers_review/bloc/data/models/weather.dart';

abstract class IWeatherRepository {
  Future<Weather> getWeather({
    required double lat,
    required double lon,
  });
}

class WeatherRepository implements IWeatherRepository {
  final NetworkClient networkClient;

  WeatherRepository(this.networkClient);

  @override
  Future<Weather> getWeather({
    required double lat,
    required double lon,
  }) =>
      networkClient.getWeather(
        lat: lat,
        lon: lon,
      );
}
