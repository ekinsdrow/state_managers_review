import 'package:state_managers_review/redux/data/models/product.dart';
import 'package:state_managers_review/redux/redux/actions.dart';
import 'package:state_managers_review/redux/redux/state.dart';

AppState appReducer(AppState appState, dynamic action) {
  return AppState(
    cart: cartReducer(
      appState,
      action,
    ),
    products: productReducer(
      appState,
      action,
    ),
  );
}

Map<Product, int> cartReducer(AppState appState, dynamic action) {
  if (action is AddProductToCart) {
    for (final product in appState.products) {
      if (product.id == action.product.id) {
        if (appState.cart[product] == null) {
          appState.cart[product] = 1;
        } else {
          appState.cart[product] = appState.cart[product]! + 1;
        }
      }
    }
  } else if (action is RemoveProductFromCart) {
    for (final product in appState.products) {
      if (product.id == action.product.id) {
        if (appState.cart[product] != null) {
          final res = appState.cart[product]! - 1;
          if (res <= 0) {
            appState.cart.remove(product);
          } else {
            appState.cart[product] = res;
          }
        }
      }
    }
  }

  return appState.cart;
}

List<Product> productReducer(
  AppState appState,
  dynamic action,
) {
  if (action is FetchProductsSuccessAction) {
    return action.products;
  }

  return appState.products;
}
