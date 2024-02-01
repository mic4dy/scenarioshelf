import 'package:flutter/material.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/views/components/images/session_image.dart';

class SessionTile extends StatelessWidget {
  const SessionTile({
    required this.session,
    super.key,
  });

  final Session session;

  @override
  Widget build(BuildContext context) {
    const heightSize = 64.0;
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      // TODO: onTap
      child: Container(
        height: heightSize,
        width: double.infinity,
        padding: const EdgeInsets.all(PaddingSize.minimum),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusSize.small),
        ),
        child: Row(
          children: [
            SizedBox.square(
              dimension: heightSize - PaddingSize.minimum * 2,
              child: SessionImage(
                imageUrl: session.image,
              ),
            ),
            const SizedBox(height: MarginSize.small),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  session.scenario.name,
                  style: const TextStyle(
                    fontSize: FontSize.label,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.sports_esports_outlined,
                      size: 16,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                    ),
                    Text(
                      session.scenario.system.name,
                      style: TextStyle(
                        fontSize: FontSize.caption,
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      size: 16,
                      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                    ),
                    Text(
                      session.scenario.system.name,
                      style: TextStyle(
                        fontSize: FontSize.caption,
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
