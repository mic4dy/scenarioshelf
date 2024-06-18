import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot.dart';

part 'sessions_sort_pivot_controller.g.dart';

@riverpod
SessionsSortPivot sessionsSortPivotController(SessionsSortPivotControllerRef ref) => SessionsSortPivot.createdAt;
