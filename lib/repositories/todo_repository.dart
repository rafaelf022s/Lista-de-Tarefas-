import 'dart:convert';

import 'package:lista_tarefa/models/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoReposityory {
  late SharedPreferences sharedPreferences;

  Future<List<Todo>> getTodolist() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString('todo_list') ?? '[]';
    final List jsonDecoded = json.decode(jsonString) as List;
    return jsonDecoded.map((e) => Todo.fromJson(e)).toList();
  }

  void saveTodoList(List<Todo> todos) {
    final jsonString = json.encode(todos);
    sharedPreferences.setString('todo_list', jsonString);
  }
}
