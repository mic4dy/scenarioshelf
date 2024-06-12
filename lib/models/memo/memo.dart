import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo.freezed.dart';
part 'memo.g.dart';

@freezed
class Memo with _$Memo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Memo({
    required String id,
    required String title,
    required String content,
    required DateTime updatedAt,
    required DateTime createdAt,
    @Default(true) bool isPublic,
  }) = _Memo;

  factory Memo.fromJson(Map<String, dynamic> json) => _$MemoFromJson(json);
}
