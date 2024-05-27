import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/views/pages/home/components/session_image.dart';
import 'package:scenarioshelf/views/pages/home/components/session_subtitle.dart';

class SessionTile extends StatelessWidget {
  const SessionTile({
    required this.session,
    super.key,
  });

  final Session session;

  @override
  Widget build(BuildContext context) {
    const heightSize = 54.0;

    return SizedBox(
      height: heightSize,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusSize.small),
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.minimum),
          child: Row(
            children: [
              SizedBox(
                width: heightSize - PaddingSize.minimum * 2 - 8,
                height: heightSize - PaddingSize.minimum * 2,
                child: SessionImage(
                  imageUrl: session.image,
                ),
              ),
              const SizedBox(width: MarginSize.small),
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
                  SessionSubtitle.myRole(session: session),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
