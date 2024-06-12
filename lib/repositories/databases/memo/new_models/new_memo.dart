import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'new_memo.freezed.dart';

@freezed
class NewMemo with _$NewMemo {
  factory NewMemo({
    required String sessionId,
    required String title,
    required String content,
    bool isPublic = true,
  }) {
    return NewMemo.inserting(
      id: const Uuid().v4(),
      sessionId: sessionId,
      title: title,
      content: content,
      isPublic: isPublic,
    );
  }

  const factory NewMemo.inserting({
    required String id,
    required String sessionId,
    required String title,
    required String content,
    required bool isPublic,
  }) = _NewMemoInserting;
}
