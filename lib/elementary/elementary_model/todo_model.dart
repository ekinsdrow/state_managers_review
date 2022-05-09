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
    for (final todo in await todoRepository.getTodos()) {
      todosNotifier.value[todo] = false;
    }
  }

  void checkTodo({
    required Todo todo,
    required bool value,
  }) {
    todosNotifier.value[todo] = value;
  }
}
