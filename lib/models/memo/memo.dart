import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo.freezed.dart';
part 'memo.g.dart';

@freezed
class Memo with _$Memo {
  const factory Memo({
    required String title,
    required String content,
    @Default(true) bool isPublic,
  }) = _Memo;

  factory Memo.fromJson(Map<String, dynamic> json) => _$MemoFromJson(json);
}
