import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => _Item(
        title: 'Title $index',
      ),
      itemCount: 20,
    );
  }
}

class _Item extends StatefulWidget {
  const _Item({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  State<_Item> createState() => _ItemState();
}

class _ItemState extends State<_Item> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title),
      onChanged: (bool? value) {
        setState(() {
          if (value != null) {
            this.value = value;
          }
        });
      },
      value: value,
    );
  }
}
