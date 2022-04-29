import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managers_review/bloc/blocs/weather/weather_bloc.dart';
import 'package:state_managers_review/bloc/data/models/city.dart';
import 'package:state_managers_review/bloc/di/weather_scope.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
    required this.city,
    Key? key,
  }) : super(key: key);

  final City city;

  @override
  Widget build(BuildContext context) {
    return WeatherScope(
      city: city,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Weather in ${city.name}'),
        ),
        body: Center(
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) => state.when(
              loading: () => const CircularProgressIndicator(),
              success: (weather) => Text(
                '${city.name} - ${weather.temp}C',
                style: Theme.of(context).textTheme.headline3,
              ),
              error: (e) => Text(
                e,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
