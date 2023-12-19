import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_color.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';

class AppSnackbar extends SnackBar {
  AppSnackbar({
    required super.content,
    this.color,
    super.key,
  }) : super(
          padding: const EdgeInsets.only(left: PaddingSize.medium),
          behavior: SnackBarBehavior.floating,
          elevation: 4,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: color != null ? color.withOpacity(0.5) : Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(ShapeSize.smallCircular),
          ),
          // backgroundColor: AppColor.ui.white,
          showCloseIcon: true,
          closeIconColor: color,
        );

  factory AppSnackbar.success({
    required Widget content,
  }) =>
      AppSnackbar(
        color: AppColor.ui.success,
        content: Padding(
          padding: const EdgeInsets.all(PaddingSize.small),
          child: Row(
            children: [
              Icon(
                Icons.check_circle,
                size: IconSize.snackbar,
                color: AppColor.ui.success,
              ),
              const SizedBox(width: MarginSize.minimum),
              Text(
                'SUCCESS',
                style: TextStyle(
                  color: AppColor.ui.success,
                ),
              ),
              const SizedBox(width: MarginSize.medium),
              Flexible(
                child: DefaultTextStyle(
                  style: TextStyle(
                    // color: AppColor.text.snackBar,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    height: 1.2,
                  ),
                  child: content,
                ),
              ),
            ],
          ),
        ),
      );

  factory AppSnackbar.loading({
    required Widget content,
  }) =>
      AppSnackbar(
        color: AppColor.ui.loading,
        content: Padding(
          padding: const EdgeInsets.all(PaddingSize.small),
          child: Row(
            children: [
              Icon(
                Icons.pending,
                size: IconSize.snackbar,
                color: AppColor.ui.loading,
              ),
              const SizedBox(width: MarginSize.minimum),
              Text(
                'LOADING',
                style: TextStyle(
                  color: AppColor.ui.loading,
                ),
              ),
              const SizedBox(width: MarginSize.medium),
              Flexible(
                child: DefaultTextStyle(
                  style: TextStyle(
                    // color: AppColor.text.snackBar,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    height: 1.2,
                  ),
                  child: content,
                ),
              ),
            ],
          ),
        ),
      );

  factory AppSnackbar.error({
    required Widget content,
  }) =>
      AppSnackbar(
        color: AppColor.ui.error,
        content: Row(
          children: [
            Icon(
              Icons.error,
              size: IconSize.snackbar,
              color: AppColor.ui.error,
            ),
            const SizedBox(width: MarginSize.minimum),
            Text(
              'ERROR',
              style: TextStyle(
                color: AppColor.ui.error,
              ),
            ),
            const SizedBox(width: MarginSize.medium),
            Flexible(
              child: DefaultTextStyle(
                style: TextStyle(
                  // color: AppColor.text.snackBar,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  height: 1.2,
                ),
                child: content,
              ),
            ),
          ],
        ),
      );

  final Color? color;
}
