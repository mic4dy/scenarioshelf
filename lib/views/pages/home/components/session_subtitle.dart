import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/models/session/session.dart';

class SessionSubtitle extends StatelessWidget {
  const SessionSubtitle({
    required this.icon,
    this.label,
    super.key,
  });

  factory SessionSubtitle.myRole({
    required Session session,
  }) =>
      SessionSubtitle(
        icon: Icons.face_outlined,
        label: session.myRole,
      );

  factory SessionSubtitle.schedule({
    required Session session,
  }) =>
      SessionSubtitle(
        icon: Icons.calendar_month_outlined,
        label: session.myRole,
      );

  final IconData icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
        ),
        Text(
          label ?? '-',
          style: TextStyle(
            fontSize: FontSize.caption,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
