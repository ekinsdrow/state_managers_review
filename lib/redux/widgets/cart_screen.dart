import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:state_managers_review/redux/data/models/product.dart';
import 'package:state_managers_review/redux/redux/state.dart';
import 'package:state_managers_review/redux/widgets/item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CartScreenVm>(
      converter: (store) => CartScreenVm.fromStore(store),
      builder: (context, state) => ListView.separated(
        itemBuilder: (context, index) => Item(
          product: state.products[index],
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: 20,
        ),
        itemCount: state.products.length,
      ),
    );
  }
}

class CartScreenVm {
  final List<Product> products;

  CartScreenVm({
    required this.products,
  });

  factory CartScreenVm.fromStore(Store<AppState> store) {
    final products = <Product>[];

    for (final p in store.state.cart.keys) {
      products.add(p);
    }

    return CartScreenVm(
      products: products,
    );
  }
}
