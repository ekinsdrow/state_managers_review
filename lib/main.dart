import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managers_review/bloc/widgets/cities_screen.dart';
import 'package:state_managers_review/elementary/widgets/elementary_screen.dart';
import 'package:state_managers_review/redux/widgets/redux_screen.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Dio(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('State managers'),
          ),
          body: ListView(
            children: const [
              _Item(
                text: 'BLoC',
                widget: CitiesScreen(),
              ),
              _Item(
                text: 'Redux',
                widget: ReduxScreen(),
              ),
              _Item(
                text: 'Elementary',
                widget: ElementaryScreen(),
              ),
            ],
          ),
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
