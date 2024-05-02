import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/app/bloc/app_bloc.dart';
import 'package:gap/gap.dart';

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
        toolbarHeight: 80.0,
        title: Text(
          task == null ? 'Add New Task' : 'Edit Task',
          style: const TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(16.0),
                Text(
                  'Task Name',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                      ),
                ),
                const Gap(16.0),
                TextFormField(
                  controller: textEditingController,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: ElevatedButton(
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
                      child: const Text(
                        'Done',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          shadows: [
                            Shadow(
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
