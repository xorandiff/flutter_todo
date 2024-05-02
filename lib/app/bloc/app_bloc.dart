import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/app/bloc/app_state.dart';
import 'package:flutter_todo/app/model/model.dart';

part 'app_event.dart';

final initialTasks = [
  Task(
    id: 0,
    name: "Training at the Gym",
    isDone: true,
  ),
  Task(
    id: 1,
    name: "Play Paddle with friends",
    isDone: false,
  ),
  Task(
    id: 2,
    name: "Burger BBQ with family",
    isDone: false,
  ),
];

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState(tasks: initialTasks)) {
    on<AddTaskEvent>(_onAddTaskEvent);
    on<EditTaskEvent>(_onEditTaskEvent);
    on<MarkTaskDoneEvent>(_onMarkTaskDoneEvent);
    on<MarkTaskUndoneEvent>(_onMarkTaskUndoneEvent);
  }

  void _onAddTaskEvent(AddTaskEvent event, Emitter<AppState> emit) {
    final updatedTasks = [
      ...state.tasks,
      Task(
        id: state.tasks.length,
        name: event.name,
      ),
    ];

    emit(
      state.copyWith(
        tasks: updatedTasks,
      ),
    );
  }

  void _onEditTaskEvent(EditTaskEvent event, Emitter<AppState> emit) {
    emit(
      state.copyWith(),
    );
  }

  void _onMarkTaskDoneEvent(MarkTaskDoneEvent event, Emitter<AppState> emit) {
    final updatedTasks = state.tasks.map((task) {
      if (task.id == event.taskId) {
        return task.copyWith(isDone: true);
      } else {
        return task;
      }
    }).toList();

    emit(
      state.copyWith(
        tasks: updatedTasks,
      ),
    );
  }

  void _onMarkTaskUndoneEvent(
      MarkTaskUndoneEvent event, Emitter<AppState> emit) {
    final updatedTasks = state.tasks.map((task) {
      if (task.id == event.taskId) {
        return task.copyWith(isDone: false);
      } else {
        return task;
      }
    }).toList();

    emit(
      state.copyWith(
        tasks: updatedTasks,
      ),
    );
  }
}
