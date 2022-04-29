import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managers_review/bloc/blocs/cities/cities_bloc.dart';
import 'package:state_managers_review/bloc/di/cities_scope.dart';
import 'package:state_managers_review/bloc/widgets/weather_screen.dart';

class CitiesScreen extends StatelessWidget {
  const CitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CitiesScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cities'),
        ),
        body: BlocBuilder<CitiesBloc, CitiesState>(
          builder: (context, state) => state.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error) => Center(
              child: Text(error),
            ),
            success: (cities) => ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(cities[index].name),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherScreen(
                      city: cities[index],
                    ),
                  ),
                ),
              ),
              itemCount: cities.length,
            ),
          ),
        ),
      ),
    );
  }
}
