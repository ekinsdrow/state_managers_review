import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:state_managers_review/redux/data/models/product.dart';
import 'package:state_managers_review/redux/redux/actions.dart';
import 'package:state_managers_review/redux/redux/state.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.car_rental,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                product.name,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              StoreConnector<AppState, VoidCallback>(
                converter: (store) => () => store.dispatch(
                      RemoveProductFromCart(product),
                    ),
                builder: (context, callback) {
                  return GestureDetector(
                    onTap: callback,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
              Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                color: Colors.grey[300],
                child: StoreConnector<AppState, ItemVm>(
                  converter: (store) => ItemVm.fromStore(
                    store,
                    product,
                  ),
                  builder: (context, state) {
                    return Text(
                      '${state.count}',
                      textAlign: TextAlign.center,
                    );
                  },
                ),
              ),
              StoreConnector<AppState, VoidCallback>(
                converter: (store) => () => store.dispatch(
                      AddProductToCart(product),
                    ),
                builder: (context, callback) {
                  return GestureDetector(
                    onTap: callback,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemVm {
  final int count;

  ItemVm({
    required this.count,
  });

  factory ItemVm.fromStore(
    Store<AppState> store,
    Product product,
  ) {
    var count = 0;

    final state = store.state;

    for (final p in state.cart.keys) {
      if (p.id == product.id) {
        count = state.cart[p]!;
      }
    }

    return ItemVm(
      count: count,
    );
  }
}
