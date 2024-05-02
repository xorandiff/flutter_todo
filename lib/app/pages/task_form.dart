import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/app/bloc/app_bloc.dart';

import '../model/model.dart';

class TaskForm extends StatelessWidget {
  final Task? task;

  const TaskForm({
    super.key,
    this.task,
  });

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController(
      text: task?.name,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(task == null ? 'Add Task' : 'Edit Task'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Task Name'),
              TextFormField(
                controller: textEditingController,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              if (task == null) {
                context.read<AppBloc>().add(AddTaskEvent(
                      name: textEditingController.text,
                    ));
              } else {
                context.read<AppBloc>().add(EditTaskEvent(
                      taskId: task!.id,
                      name: textEditingController.text,
                    ));
              }

              Navigator.of(context).pop();
            },
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }
}
