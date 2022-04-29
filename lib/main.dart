import 'package:flutter/material.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State managers'),
        ),
        body: ListView(
          children: [
            _Item(
              text: 'Test',
              widget: Container(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.text,
    required this.widget,
    Key? key,
  }) : super(key: key);

  final String text;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
      ),
    );
  }
}
