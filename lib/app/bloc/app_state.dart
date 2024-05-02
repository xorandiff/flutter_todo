import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/model.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default([]) List<Task> tasks,
  }) = _AppState;
}
