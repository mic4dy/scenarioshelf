import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot.dart';

part 'sessions_sort_pivot_controller.g.dart';

@riverpod
class SessionsSortPivotController extends _$SessionsSortPivotController {
  @override
  SessionsSortPivot build() => SessionsSortPivot.createdAt;

  // ignore: use_setters_to_change_properties
  void update(SessionsSortPivot pivot) => state = pivot;
}
