import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

part 'provisionally_registered_user.freezed.dart';
part 'provisionally_registered_user.g.dart';

@freezed
class ProvisionallyRegisteredUser with _$ProvisionallyRegisteredUser {
  const factory ProvisionallyRegisteredUser({
    required String id,
    required String? name,
    String? avatarUrl,
  }) = _ProvisionallyRegisteredUser;

  factory ProvisionallyRegisteredUser.fromJson(Map<String, dynamic> json) => _$ProvisionallyRegisteredUserFromJson(json);
  factory ProvisionallyRegisteredUser.fromSupabase(supabase.User user) {
    return ProvisionallyRegisteredUser(
      id: user.id,
      name: user.userMetadata?['username'] as String?,
      avatarUrl: user.userMetadata?['avatar_url'] as String?,
    );
  }
}
