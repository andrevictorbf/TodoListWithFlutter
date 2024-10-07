import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: const Text(
          'Dormir',
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          height: 36,
          width: 36,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(8)),
          child: IconButton(
              color: Colors.white,
              iconSize: 16,
              onPressed: () {},
              icon: const Icon(Icons.delete)),
        ),
      ),
    );
  }
}
