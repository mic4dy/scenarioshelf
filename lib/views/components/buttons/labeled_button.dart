import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';

class LabeledButton extends StatelessWidget {
  const LabeledButton({
    required this.brightness,
    required this.onPressed,
    required this.label,
    this.minimumSize,
    this.textStyle,
    this.leading,
    super.key,
  });

  final WidgetBrightness brightness;
  final VoidCallback? onPressed;
  final String label;
  final Size? minimumSize;
  final TextStyle? textStyle;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 0.5,
        ),
        backgroundColor: switch (brightness) {
          WidgetBrightness.dark => Theme.of(context).colorScheme.primary,
          _ => null,
        },
        shape: const StadiumBorder(),
        minimumSize: minimumSize,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(width: MarginSize.small),
          ],
          Text(
            label,
            style: TextStyle(
              color: switch (brightness) {
                WidgetBrightness.light => Theme.of(context).colorScheme.primary,
                WidgetBrightness.dark => Theme.of(context).colorScheme.onPrimary,
              },
            ).merge(textStyle),
          ),
        ],
      ),
    );
  }
}
