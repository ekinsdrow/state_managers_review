import 'package:flutter/material.dart';
import 'package:state_managers_review/elementary/widgets/todo_screen.dart';

class ElementaryScreen extends StatelessWidget {
  const ElementaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elementary'),
      ),
      body: const SafeArea(
        child: TodoScreen(),
      ),
    );
  }
}
