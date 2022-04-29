import 'package:state_managers_review/bloc/data/clients/network_client.dart';
import 'package:state_managers_review/bloc/data/models/city.dart';

abstract class ICitiesRepository {
  Future<List<City>> getCities();
}

class CitiesRepository implements ICitiesRepository {
  final NetworkClient networkClient;

  CitiesRepository(this.networkClient);

  @override
  Future<List<City>> getCities() => networkClient.getCities();
}
