import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/views/pages/home/components/session_image.dart';
import 'package:scenarioshelf/views/pages/home/components/session_subtitle.dart';
import 'package:scenarioshelf/views/pages/home/providers/sessions_sort/sessions_sort_controller.dart';

class SessionTile extends StatelessWidget {
  const SessionTile({
    required this.session,
    super.key,
  });

  final Session session;

  @override
  Widget build(BuildContext context) {
    const heightSize = 56.0;
    const paddingSize = PaddingSize.minimum;
    const imageSize = heightSize - paddingSize * 2;

    return SizedBox(
      height: heightSize,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusSize.small),
        ),
        child: Padding(
          padding: const EdgeInsets.all(paddingSize),
          child: Row(
            children: [
              SizedBox(
                width: imageSize - 8,
                height: imageSize,
                child: SessionImage(
                  imageUrl: session.scenario.keyVisualUrl,
                ),
              ),
              const SizedBox(width: MarginSize.small),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    session.scenario.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: FontSize.label,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Consumer(
                    builder: (context, ref, _) {
                      return SessionSubtitle.sortPivot(
                        pivot: ref.watch(sessionsSortControllerProvider).pivot,
                        session: session,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
