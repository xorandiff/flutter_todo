import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  factory Task({
    required int id,
    required String name,
    @Default(false) bool isDone,
  }) = _Task;
}
