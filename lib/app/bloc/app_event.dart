part of 'app_bloc.dart';

sealed class AppEvent {
  const AppEvent();
}

final class AddTaskEvent extends AppEvent {
  final String name;

  const AddTaskEvent({required this.name});
}

final class EditTaskEvent extends AppEvent {
  final int taskId;
  final String name;

  const EditTaskEvent({
    required this.taskId,
    required this.name,
  });
}

final class MarkTaskDoneEvent extends AppEvent {
  final int taskId;

  const MarkTaskDoneEvent({required this.taskId});
}

final class MarkTaskUndoneEvent extends AppEvent {
  final int taskId;

  const MarkTaskUndoneEvent({required this.taskId});
}
