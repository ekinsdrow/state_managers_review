import 'package:redux/redux.dart';
import 'package:state_managers_review/redux/data/repositories/product_repository.dart';
import 'package:state_managers_review/redux/redux/reducers.dart';
import 'package:state_managers_review/redux/redux/state.dart';

import 'middleware.dart';

Store<AppState> createStore() {
  final repository = ProductRepository();

  return Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      ProductMiddleWare(
        repository,
      ),
    ],
  );
}
