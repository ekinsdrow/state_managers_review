import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_managers_review/mobx/store/login_store.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({
    required this.loginStore,
    Key? key,
  }) : super(key: key);

  final LoginStore loginStore;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Observer(
            builder: (_) => Text(
              loginStore.user.value == null
                  ? 'Not Auth'
                  : loginStore.user.value!.name,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              loginStore.logout();
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
