import 'package:flutter/material.dart';

import 'item.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const Item(),
      separatorBuilder: (_, __) => const SizedBox(
        height: 20,
      ),
      itemCount: 100,
    );
  }
}

