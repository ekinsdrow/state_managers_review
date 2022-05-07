import 'package:redux/redux.dart';
import 'package:state_managers_review/redux/data/repositories/product_repository.dart';
import 'package:state_managers_review/redux/redux/actions.dart';
import 'package:state_managers_review/redux/redux/state.dart';

class ProductMiddleWare extends MiddlewareClass<AppState> {
  final IProductRepository productRepository;

  ProductMiddleWare(this.productRepository);

  @override
  Future<void> call(
    Store<AppState> store,
    action,
    NextDispatcher next,
  ) async {
    if (action is FetchProducts) {
      final products = await productRepository.getProducts();

      store.dispatch(
        FetchProductsSuccessAction(products),
      );
    }

    next(action);
  }
}
