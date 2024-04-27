import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/constants/domains/sort_order.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_pivot.dart';

part 'sessions_sort_state.freezed.dart';

@freezed
class SessionsSortState with _$SessionsSortState {
  const factory SessionsSortState({
    @Default(SessionsSortPivot.scenarioName) SessionsSortPivot pivot,
    @Default(SortOrder.asc) SortOrder order,
  }) = _SessionsSortState;
}
