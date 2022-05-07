import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:state_managers_review/redux/redux/actions.dart';
import 'package:state_managers_review/redux/redux/store.dart';
import 'package:state_managers_review/redux/widgets/cart_screen.dart';
import 'package:state_managers_review/redux/widgets/item_list_screen.dart';

class ReduxScreen extends StatefulWidget {
  const ReduxScreen({Key? key}) : super(key: key);

  @override
  State<ReduxScreen> createState() => _ReduxScreenState();
}

class _ReduxScreenState extends State<ReduxScreen> {
  int index = 0;

  final store = createStore();

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store
        ..dispatch(
          FetchProducts(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Redux'),
        ),
        body: index == 0 ? const ItemListScreen() : const CartScreen(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
