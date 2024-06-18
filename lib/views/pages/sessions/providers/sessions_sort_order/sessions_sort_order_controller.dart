import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scenarioshelf/constants/domains/sort_order.dart';

part 'sessions_sort_order_controller.g.dart';

@riverpod
SortOrder sessionsSortOderController(SessionsSortOderControllerRef ref) => SortOrder.desc;
