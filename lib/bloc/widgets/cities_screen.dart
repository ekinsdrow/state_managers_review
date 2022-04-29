import 'package:flutter/material.dart';
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
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: const Text('Berlin'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WeatherScreen(),
              ),
            ),
          ),
          itemCount: 100,
        ),
      ),
    );
  }
}
