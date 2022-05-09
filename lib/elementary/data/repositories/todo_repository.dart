import 'package:state_managers_review/elementary/data/model/todo.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getTodos();
}

class TodoRepository implements ITodoRepository {
  @override
  Future<List<Todo>> getTodos() async {
    await Future.delayed(
      const Duration(milliseconds: 500),
    );

    return <Todo>[
      for (int i = 0; i < 100; i++)
        Todo(
          name: 'Todo $i',
          id: i,
        ),
    ];
  }
}
