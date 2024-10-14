import 'package:flutter/material.dart';
import 'package:lista_tarefa/pages/todo_list_page.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListPage(
      ),
    );
  }
}
