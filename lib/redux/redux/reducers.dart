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
    final cart = <Product, int>{};

    for (final product in appState.cart.keys) {
      if (product.id == action.product.id) {
        cart[product] = appState.cart[product]! + 1;
      } else {
        cart[product] = appState.cart[product]!;
      }
    }

    return cart;
  } else if (action is RemoveProductFromCart) {
    if (action is AddProductToCart) {
      final cart = <Product, int>{};

      for (final product in appState.cart.keys) {
        if (product.id == action.product.id) {
          final val = appState.cart[product]! - 1;
          if (val <= 0) {
            cart[product] = 0;
          } else {
            cart[product] = val;
          }
        } else {
          cart[product] = appState.cart[product]!;
        }
      }

      return cart;
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
