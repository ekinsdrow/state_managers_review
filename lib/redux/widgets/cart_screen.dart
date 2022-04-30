import 'package:flutter/material.dart';

import 'item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const Item(),
      separatorBuilder: (_, __) => const SizedBox(
        height: 20,
      ),
      itemCount: 2,
    );
  }
}
