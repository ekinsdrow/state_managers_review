import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:state_managers_review/redux/data/models/product.dart';
import 'package:state_managers_review/redux/redux/state.dart';

import 'item.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ItemsListScreenVm>(
      converter: (store) => ItemsListScreenVm.fromStore(store),
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.separated(
          itemBuilder: (context, index) => Item(
            product: state.products[index],
          ),
          separatorBuilder: (_, __) => const SizedBox(
            height: 20,
          ),
          itemCount: state.products.length,
        );
      },
    );
  }
}

class ItemsListScreenVm {
  final bool loading;
  final List<Product> products;

  ItemsListScreenVm({
    required this.loading,
    required this.products,
  });

  factory ItemsListScreenVm.fromStore(
    Store<AppState> store,
  ) {
    return ItemsListScreenVm(
      loading: store.state.products.isEmpty,
      products: store.state.products,
    );
  }
}
