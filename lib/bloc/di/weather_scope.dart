import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_managers_review/bloc/blocs/weather/weather_bloc.dart';
import 'package:state_managers_review/bloc/data/clients/network_client.dart';
import 'package:state_managers_review/bloc/data/models/city.dart';
import 'package:state_managers_review/bloc/data/repositories/weather_repository.dart';

class WeatherScope extends StatelessWidget {
  const WeatherScope({
    required this.child,
    required this.city,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final City city;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => NetworkClient(context.read<Dio>()),
      child: RepositoryProvider<IWeatherRepository>(
        create: (context) => WeatherRepository(
          context.read<NetworkClient>(),
        ),
        child: BlocProvider(
          create: (context) => WeatherBloc(
            weatherRepository:
                RepositoryProvider.of<IWeatherRepository>(context),
          )..add(
              WeatherEvent.fetch(
                lat: city.lat,
                lon: city.long,
              ),
            ),
          child: child,
        ),
      ),
    );
  }
}
