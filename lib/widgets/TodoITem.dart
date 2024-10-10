import 'package:flutter/material.dart';
import 'package:todolistproject/model/toDo.dart';

import '../constants/colors.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          print("User click");
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        tileColor: Colors.white,
        leading:  Icon(
          todo.done ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.toDoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration:todo.done? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          height: 36,
          width: 36,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(8)),
          child: IconButton(
              color: Colors.white,
              iconSize: 16,
              onPressed: () {
                print("user clicked on delete icon");
              },
              icon: const Icon(Icons.delete)),
        ),
      ),
    );
  }
}
