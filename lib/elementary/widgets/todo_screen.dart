import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:state_managers_review/elementary/elementary_model/todo_model.dart';
import 'package:state_managers_review/elementary/wm/todo_wm.dart';

import '../data/model/todo.dart';

class TodoScreen extends ElementaryWidget<TodoWm> {
  const TodoScreen({
    Key? key,
  }) : super(TodoWm.createTodoWM);

  @override
  Widget build(TodoWm wm) {
    return ValueListenableBuilder<Map<Todo, bool>>(
      valueListenable: wm.todos,
      builder: (_, data, __) {
        return ListView.builder(
          itemBuilder: (context, index) => _Item(
            title: data.keys.elementAt(index).name,
            tap: (v) {
              if (v != null) {
                wm.onTapTodo(
                  todo: data.keys.elementAt(index),
                  value: v,
                );
              }
            },
            value: data.values.elementAt(index),
          ),
          itemCount: data.length,
        );
      },
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.title,
    required this.value,
    required this.tap,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool value;
  final Function(bool? value) tap;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(title),
      onChanged: tap,
      value: value,
    );
  }
}
