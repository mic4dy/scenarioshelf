import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';

class LabeledButton extends StatelessWidget {
  const LabeledButton({
    required this.onPressed,
    required this.child,
    this.buttonStyle,
    super.key,
  });

  factory LabeledButton.bright({
    required BuildContext context,
    required void Function()? onPressed,
    required String label,
    double? textLetterSpace,
    Size? size,
  }) {
    return LabeledButton(
      onPressed: onPressed,
      buttonStyle: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 0.5,
        ),
        shape: const StadiumBorder(),
        minimumSize: size,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          letterSpacing: textLetterSpace,
        ),
      ),
    );
  }

  factory LabeledButton.dark({
    required BuildContext context,
    required void Function()? onPressed,
    required String label,
    double? textLetterSpace,
    Size? size,
  }) {
    return LabeledButton(
      onPressed: onPressed,
      buttonStyle: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 0.5,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: const StadiumBorder(),
        minimumSize: size,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          letterSpacing: textLetterSpace,
        ),
      ),
    );
  }

  factory LabeledButton.withIcon({
    required BuildContext context,
    required void Function()? onPressed,
    required Widget icon,
    required String label,
    double? textLetterSpace,
    Size? size,
  }) {
    return LabeledButton(
      onPressed: onPressed,
      buttonStyle: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary,
          width: 0.5,
        ),
        shape: const StadiumBorder(),
        minimumSize: size,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(width: MarginSize.small),
          Text(
            label,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              letterSpacing: textLetterSpace,
            ),
          ),
        ],
      ),
    );
  }

  final void Function()? onPressed;
  final Widget child;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: child,
    );
  }
}
