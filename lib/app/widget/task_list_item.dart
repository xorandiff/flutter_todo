import 'package:flutter/material.dart';
import 'package:flutter_todo/app/model/model.dart';

class TaskListItem extends StatelessWidget {
  final Task task;

  const TaskListItem({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      surfaceTintColor: Colors.white,
      shadowColor: Colors.black38,
      elevation: 8,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ),
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.transparent,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: task.isDone
                    ? const Color.fromRGBO(73, 194, 93, 1.0)
                    : const Color.fromRGBO(7, 29, 85, 1.0),
                width: 2.0,
                style: BorderStyle.solid,
              ),
              color:
                  task.isDone ? const Color.fromRGBO(83, 218, 105, 1.0) : null,
            ),
            padding: const EdgeInsets.all(4.0),
            child: task.isDone
                ? const Icon(
                    Icons.check_rounded,
                    size: 18.0,
                    color: Color.fromRGBO(57, 150, 73, 1.0),
                  )
                : const SizedBox(
                    width: 18.0,
                    height: 18.0,
                  ),
          ),
        ),
        title: Text(
          task.name,
          style: task.isDone
              ? const TextStyle(
                  color: Color.fromRGBO(141, 141, 141, 1.0),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Color.fromRGBO(141, 141, 141, 1.0),
                )
              : const TextStyle(
                  color: Color.fromRGBO(7, 29, 85, 1.0),
                  fontWeight: FontWeight.bold,
                ),
        ),
        trailing: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(3.0),
              ),
              side: BorderSide(
                color: Color.fromRGBO(7, 29, 85, 1.0),
              ),
            ),
            padding: EdgeInsets.zero,
          ),
          child: const Text(
            'Edit',
            style: TextStyle(
              color: Color.fromRGBO(7, 29, 85, 1.0),
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
