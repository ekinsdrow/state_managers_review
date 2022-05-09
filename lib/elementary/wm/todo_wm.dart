import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:state_managers_review/elementary/data/model/todo.dart';
import 'package:state_managers_review/elementary/data/repositories/todo_repository.dart';
import 'package:state_managers_review/elementary/elementary_model/todo_model.dart';

import '../widgets/todo_screen.dart';

// Vm
class TodoWm extends WidgetModel<TodoScreen, TodoModel> {
  TodoWm(TodoModel model) : super(model);

  ValueListenable<Map<Todo, bool>> get todos => model.todosNotifier;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    model.getAllModels();
  }

  void onTapTodo({
    required Todo todo,
    required bool value,
  }) {
    model.checkTodo(
      todo: todo,
      value: value,
    );
  }

  static TodoWm createTodoWM(BuildContext _) => TodoWm(
        TodoModel(
          //not here, I know
          TodoRepository(),
        ),
      );
}
