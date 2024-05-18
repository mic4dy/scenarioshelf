import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/repositories/firebase/crashlytics/crashlytics_repository.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';
import 'package:scenarioshelf/views/pages/user_setting/providers/states/user_setting_state.dart';

part 'user_setting_controller.g.dart';

@riverpod
class UserSettingController extends _$UserSettingController {
  @override
  FutureOr<UserSettingState> build() {
    return const UserSettingState();
  }

  void resolve() {
    state.maybeWhen(
      error: (error, stack) {
        state = AsyncValue.data(state.valueOrNull ?? const UserSettingState());
      },
      orElse: () {},
    );
  }

  void updateName(String name) {
    state.whenData((data) => state = AsyncValue.data(data.copyWith(name: name)));
  }

  Future<void> pickAvatar() async {
    state.whenData((data) async {
      state = const AsyncValue.loading();

      try {
        final userId = ref.read(currentUserControllerProvider)?.id ?? ref.read(provisionallyRegisteredUserControllerProvider)?.id;
        if (userId == null) {
          throw const UserException(
            message: 'Not Found User ID',
            display: 'ユーザ情報の読み取りに失敗しました',
          );
        }

        final image = await _pickImage();
        if (image == null) {
          logger.i('Canceled to Pick Image');
          return;
        }

        final cropped = await ImageCropper().cropImage(
          sourcePath: image.path,
          aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        );
        if (cropped == null) {
          logger.i('Canceled to Crop Image');
          return;
        }

        final unit8ListCropped = await cropped.readAsBytes();
        final decoded = img.decodeJpg(unit8ListCropped);
        if (decoded == null) {
          throw const UserException(
            message: 'Failed to Decode Image',
            display: '選択された画像の読み込みに失敗しました',
          );
        }

        final resized = img.copyResize(
          decoded,
          width: 512,
          height: 512,
        );

        state = AsyncValue.data(data.copyWith(avatar: img.encodeJpg(resized)));
      } on UserException catch (error, stack) {
        logger.e(
          'Failed to execute UserSettingController.pickAvatar',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          error,
          stack,
        );
      } on FormatException catch (error, stack) {
        logger.e(
          'Failed to execute UserSettingController.pickAvatar',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          const UserException(
            message: 'Failed to Access Album',
            display: 'アルバムへのアクセスが拒否されました',
          ),
          stack,
        );
      } on Exception catch (error, stack) {
        logger.e(
          'Failed to execute UserSettingController.pickAvatar',
          error: error,
          stackTrace: stack,
        );
        await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
        state = AsyncValue.error(
          UserException(
            message: error.toString(),
            display: '原因不明のエラーが発生しました',
          ),
          stack,
        );
      } finally {
        if (state is AsyncLoading) {
          state = AsyncValue.data(data);
        }
      }
    });
  }

  Future<XFile?> _pickImage() async {
    final picker = ImagePicker();
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      final lostData = await picker.retrieveLostData();
      if (!lostData.isEmpty && lostData.file != null) {
        return lostData.file;
      }
    }

    return picker.pickImage(source: ImageSource.gallery);
  }
}
