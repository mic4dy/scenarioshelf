import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/constants/domains/sort_order.dart';

part 'sessions_sort_order_controller.g.dart';

@riverpod
class SessionsSortOrderController extends _$SessionsSortOrderController {
  @override
  SortOrder build() => SortOrder.desc;

  // ignore: use_setters_to_change_properties
  void update(SortOrder order) => state = order;
}
