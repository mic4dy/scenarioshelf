import 'package:flutter/material.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';

class StatusBanner extends MaterialBanner {
  StatusBanner({
    required Widget content,
    super.leading,
    bool isVisibleClosedButton = true,
    super.key,
  }) : super(
          margin: const EdgeInsets.only(
            top: MarginSize.medium,
            left: MarginSize.medium,
            right: MarginSize.medium,
          ),
          elevation: ElevationSize.banner,
          actions: [
            if (isVisibleClosedButton)
              Builder(
                builder: (context) => IconButton(
                  onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
                  icon: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              )
            else
              const SizedBox.shrink(),
          ],
          content: Builder(
            builder: (context) {
              return DefaultTextStyle.merge(
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
                child: content,
              );
            },
          ),
        );

  factory StatusBanner.success({
    required Widget content,
  }) =>
      StatusBanner(
        leading: Builder(
          builder: (context) {
            return Icon(
              Icons.check_circle_outline,
              color: Theme.of(context).colorScheme.primary,
            );
          },
        ),
        content: content,
      );

  factory StatusBanner.loading({
    required Widget content,
  }) =>
      StatusBanner(
        isVisibleClosedButton: false,
        leading: SizedBox.square(
          dimension: 16,
          child: Builder(
            builder: (context) => CircularProgressIndicator(
              strokeWidth: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        content: content,
      );

  factory StatusBanner.error({
    required Widget content,
  }) =>
      StatusBanner(
        leading: Builder(
          builder: (context) => Icon(
            Icons.error_outline_outlined,
            color: Theme.of(context).colorScheme.error,
          ),
        ),
        content: content,
      );
}
