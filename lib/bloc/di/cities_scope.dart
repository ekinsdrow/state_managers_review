import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_managers_review/bloc/blocs/cities/cities_bloc.dart';
import 'package:state_managers_review/bloc/data/clients/network_client.dart';
import 'package:state_managers_review/bloc/data/repositories/cities_repository.dart';

class CitiesScope extends StatelessWidget {
  const CitiesScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => NetworkClient(context.read<Dio>()),
      child: RepositoryProvider<ICitiesRepository>(
        create: (context) => CitiesRepository(
          context.read<NetworkClient>(),
        ),
        child: BlocProvider(
          create: (context) => CitiesBloc(
            citiesRepository: RepositoryProvider.of<ICitiesRepository>(context),
          )..add(const CitiesEvent.fetch()),
          child: child,
        ),
      ),
    );
  }
}
