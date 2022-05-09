import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:state_managers_review/elementary/data/model/todo.dart';
import 'package:state_managers_review/elementary/data/repositories/todo_repository.dart';

//business logic
class TodoModel extends ElementaryModel {
  TodoModel(this.todoRepository);
  final ITodoRepository todoRepository;

  final ValueNotifier<Map<Todo, bool>> todosNotifier = ValueNotifier(
    {},
  );

  Future<void> getAllModels() async {
    final map = <Todo, bool>{};
    for (final todo in await todoRepository.getTodos()) {
      map[todo] = false;
    }

    todosNotifier.value = map;
  }

  void checkTodo({
    required Todo todo,
    required bool value,
  }) {
    //I know, what do new map any time this is shit, but i don't want write changenotifier
    final map = <Todo, bool>{};
    for (final t in todosNotifier.value.keys) {
      if (todo == t) {
        map[t] = value;
      } else {
        map[t] = todosNotifier.value[t]!;
      }
    }

    todosNotifier.value = map;
  }
}
