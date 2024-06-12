import 'package:scenarioshelf/constants/domains/sort_order.dart';

enum SessionsSortPivot {
  scenarioTitle,
  scenarioSystem,
  scenarioAuthor,
  schedule,
  createdAt;

  const SessionsSortPivot();

  String getViewTable(SortOrder order) {
    switch (this) {
      case SessionsSortPivot.scenarioTitle:
        switch (order) {
          case SortOrder.asc:
            return 'sessions_by_scenario_title';
          case SortOrder.desc:
            return 'sessions_by_scenario_title_desc';
        }
      case SessionsSortPivot.scenarioSystem:
        switch (order) {
          case SortOrder.asc:
            return 'sessions_by_scenario_system';
          case SortOrder.desc:
            return 'sessions_by_scenario_system_desc';
        }
      case SessionsSortPivot.scenarioAuthor:
        switch (order) {
          case SortOrder.asc:
            return 'sessions_by_scenario_author';
          case SortOrder.desc:
            return 'sessions_by_scenario_author_desc';
        }
      case SessionsSortPivot.schedule:
        switch (order) {
          case SortOrder.asc:
            return 'sessions_by_schedule_date';
          case SortOrder.desc:
            return 'sessions_by_schedule_date_desc';
        }
      case SessionsSortPivot.createdAt:
        switch (order) {
          case SortOrder.asc:
            return 'sessions_by_created_at';
          case SortOrder.desc:
            return 'sessions_by_created_at_desc';
        }
    }
  }
}
