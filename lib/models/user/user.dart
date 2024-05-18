import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scenarioshelf/models/provisionally_registered_user/provisionally_registered_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    String? avatarUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  factory User.fromProvisionallyRegisteredUser(ProvisionallyRegisteredUser provisionallyRegisteredUser) {
    if (provisionallyRegisteredUser.name == null) {
      throw const FormatException('ProvisionallyRegisteredUser.name is null');
    }

    return User(
      id: provisionallyRegisteredUser.id,
      name: provisionallyRegisteredUser.name!,
      avatarUrl: provisionallyRegisteredUser.avatarUrl,
    );
  }
  factory User.fromSupabase(supabase.User user) {
    return User(
      id: user.id,
      name: user.userMetadata?['username'] as String,
      avatarUrl: user.userMetadata?['avatar_url'] as String?,
    );
  }
}
