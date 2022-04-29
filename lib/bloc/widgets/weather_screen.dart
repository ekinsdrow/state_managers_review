import 'package:flutter/material.dart';
import 'package:state_managers_review/bloc/data/models/city.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({
    required this.city,
    Key? key,
  }) : super(key: key);

  final City city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather in ${city.name}'),
      ),
      body: Center(
        child: Text(
          'Berlin - 45C',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
