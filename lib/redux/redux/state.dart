import 'package:state_managers_review/redux/data/models/product.dart';

class AppState {
  final List<Product> products;

  //id in products : count
  final Map<Product, int> cart;

  AppState({
    required this.cart,
    required this.products,
  });

  factory AppState.initial() {
    return AppState(
      cart: {},
      products: [],
    );
  }
}
