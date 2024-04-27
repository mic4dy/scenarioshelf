import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/constants/domains/sort_order.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_pivot.dart';

import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/states/sessions_sort_state.dart';

part 'sessions_sort_controller.g.dart';

@riverpod
class SessionsSortController extends _$SessionsSortController {
  @override
  SessionsSortState build() {
    return const SessionsSortState();
  }

  void updatePivot(SessionsSortPivot pivot) {
    state = state.copyWith(pivot: pivot);
  }

  void updateOrder(SortOrder order) {
    state = state.copyWith(order: order);
  }
}
