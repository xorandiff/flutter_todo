import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key});

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
              color: const Color.fromRGBO(7, 29, 85, 1.0),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromRGBO(73, 194, 93, 1.0),
                style: BorderStyle.solid,
              ),
              color: const Color.fromRGBO(83, 218, 105, 1.0),
            ),
            padding: const EdgeInsets.all(4.0),
            child: const Icon(
              Icons.check_rounded,
              size: 18.0,
              color: Color.fromRGBO(57, 150, 73, 1.0),
            ),
          ),
        ),
        title: const Text('Task'),
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
