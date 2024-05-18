import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/themes/dummy_avatar.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';

class UserAvatar extends ConsumerWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserControllerProvider);

    if (user?.avatarUrl != null) {
      return Image.network(
        user!.avatarUrl!,
        fit: BoxFit.cover,
      );
    }

    return SvgPicture.network(
      DummyAvatar.urlWithId(id: user?.id),
      fit: BoxFit.cover,
    );
  }
}
