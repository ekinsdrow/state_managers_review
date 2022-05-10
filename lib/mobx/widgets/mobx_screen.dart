import 'package:flutter/material.dart';
import 'package:state_managers_review/mobx/widgets/login_screen.dart';
import 'package:state_managers_review/mobx/widgets/user_screen.dart';

class MobxScreen extends StatefulWidget {
  const MobxScreen({Key? key}) : super(key: key);

  @override
  State<MobxScreen> createState() => _MobxScreenState();
}

class _MobxScreenState extends State<MobxScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobx'),
      ),
      body: index == 0 ? const LoginScreen() : const UserScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.outbond,
            ),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
