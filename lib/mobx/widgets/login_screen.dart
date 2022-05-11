import 'package:flutter/material.dart';
import 'package:state_managers_review/mobx/store/login_store.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    required this.loginStore,
    Key? key,
  }) : super(key: key);

  final LoginStore loginStore;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final nameController = TextEditingController();
  final passController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Name',
            ),
          ),
          TextField(
            controller: passController,
            decoration: const InputDecoration(
              hintText: 'Pass',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                widget.loginStore.login(
                  name: nameController.text,
                  pass: passController.text,
                );
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
