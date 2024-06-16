import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_pivot.dart';

class SessionSubtitle extends StatelessWidget {
  const SessionSubtitle({
    required this.icon,
    this.label,
    super.key,
  });

  factory SessionSubtitle.scenarioTitle({
    required Session session,
  }) =>
      SessionSubtitle(
        icon: Icons.translate_outlined,
        label: session.scenario.sortTitle,
      );

  factory SessionSubtitle.scenarioSystem({
    required Session session,
  }) =>
      SessionSubtitle(
        icon: Icons.sports_esports_outlined,
        label: session.scenario.system.name,
      );

  factory SessionSubtitle.scenarioAuthor({
    required Session session,
  }) =>
      SessionSubtitle(
        icon: Icons.sports_esports_outlined,
        label: session.scenario.author,
      );

  factory SessionSubtitle.myRole({
    required Session session,
  }) =>
      SessionSubtitle(
        icon: Icons.face_outlined,
        label: session.myRoleDisplay,
      );

  factory SessionSubtitle.schedule({
    required Session session,
  }) =>
      SessionSubtitle(
        icon: Icons.calendar_month_outlined,
        label: session.eventDayDisplay,
      );

  factory SessionSubtitle.sortPivot({
    required SessionsSortPivot pivot,
    required Session session,
  }) {
    switch (pivot) {
      case SessionsSortPivot.scenarioTitle:
        return SessionSubtitle.scenarioTitle(session: session);
      case SessionsSortPivot.scenarioSystem:
        return SessionSubtitle.scenarioSystem(session: session);
      case SessionsSortPivot.scenarioAuthor:
        return SessionSubtitle.scenarioAuthor(session: session);
      case SessionsSortPivot.schedule:
        return SessionSubtitle.schedule(session: session);
      case SessionsSortPivot.createdAt:
        return SessionSubtitle.myRole(session: session);
    }
  }

  final IconData icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        ),
        const SizedBox(width: MarginSize.minimum),
        Text(
          label ?? '未登録',
          style: TextStyle(
            fontSize: FontSize.caption,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
