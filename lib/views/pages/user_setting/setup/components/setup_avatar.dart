import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import 'package:scenarioshelf/constants/themes/app_color.dart';
import 'package:scenarioshelf/constants/themes/dummy_avatar.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';
import 'package:scenarioshelf/views/pages/user_setting/providers/user_setting_controller.dart';

class SetupAvatar extends ConsumerWidget {
  const SetupAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final userSettingState = ref.watch(userSettingControllerProvider);

    return Center(
      child: GestureDetector(
        onTap: () => ref.read(userSettingControllerProvider.notifier).pickAvatar(),
        child: SizedBox.square(
          dimension: size.width * 0.35,
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                userSettingState.when(
                  data: (data) {
                    if (data.avatar == null) {
                      final userId =
                          ref.read(currentUserControllerProvider)?.id ?? ref.read(provisionallyRegisteredUserControllerProvider)?.id ?? '';

                      return SvgPicture.network(
                        DummyAvatar.urlWithId(id: userId),
                        fit: BoxFit.cover,
                      );
                    }

                    return Image.memory(
                      data.avatar!,
                      fit: BoxFit.cover,
                    );
                  },
                  loading: () => Shimmer.fromColors(
                    baseColor: AppColor.ui.shimmerBase,
                    highlightColor: AppColor.ui.white,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: AppColor.ui.shimmerBase,
                    ),
                  ),
                  error: (_, __) {
                    final userId =
                        ref.read(currentUserControllerProvider)?.id ?? ref.read(provisionallyRegisteredUserControllerProvider)?.id ?? '';

                    return SvgPicture.network(
                      DummyAvatar.urlWithId(id: userId),
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Icon(
                  Icons.add_a_photo_outlined,
                  color: AppColor.ui.white.withOpacity(0.8),
                  size: size.width * 0.35 * 0.33,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
