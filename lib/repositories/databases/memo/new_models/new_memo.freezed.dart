// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_memo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewMemo {
  String get id => throw _privateConstructorUsedError;
  String get sessionId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String sessionId, String title,
            String content, bool isPublic)
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String sessionId, String title, String content,
            bool isPublic)?
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String sessionId, String title, String content,
            bool isPublic)?
        inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewMemoInserting value) inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMemoInserting value)? inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMemoInserting value)? inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewMemoCopyWith<NewMemo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMemoCopyWith<$Res> {
  factory $NewMemoCopyWith(NewMemo value, $Res Function(NewMemo) then) =
      _$NewMemoCopyWithImpl<$Res, NewMemo>;
  @useResult
  $Res call(
      {String id,
      String sessionId,
      String title,
      String content,
      bool isPublic});
}

/// @nodoc
class _$NewMemoCopyWithImpl<$Res, $Val extends NewMemo>
    implements $NewMemoCopyWith<$Res> {
  _$NewMemoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? title = null,
    Object? content = null,
    Object? isPublic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewMemoInsertingImplCopyWith<$Res>
    implements $NewMemoCopyWith<$Res> {
  factory _$$NewMemoInsertingImplCopyWith(_$NewMemoInsertingImpl value,
          $Res Function(_$NewMemoInsertingImpl) then) =
      __$$NewMemoInsertingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sessionId,
      String title,
      String content,
      bool isPublic});
}

/// @nodoc
class __$$NewMemoInsertingImplCopyWithImpl<$Res>
    extends _$NewMemoCopyWithImpl<$Res, _$NewMemoInsertingImpl>
    implements _$$NewMemoInsertingImplCopyWith<$Res> {
  __$$NewMemoInsertingImplCopyWithImpl(_$NewMemoInsertingImpl _value,
      $Res Function(_$NewMemoInsertingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? title = null,
    Object? content = null,
    Object? isPublic = null,
  }) {
    return _then(_$NewMemoInsertingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewMemoInsertingImpl implements _NewMemoInserting {
  const _$NewMemoInsertingImpl(
      {required this.id,
      required this.sessionId,
      required this.title,
      required this.content,
      required this.isPublic});

  @override
  final String id;
  @override
  final String sessionId;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool isPublic;

  @override
  String toString() {
    return 'NewMemo.inserting(id: $id, sessionId: $sessionId, title: $title, content: $content, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMemoInsertingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sessionId, title, content, isPublic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMemoInsertingImplCopyWith<_$NewMemoInsertingImpl> get copyWith =>
      __$$NewMemoInsertingImplCopyWithImpl<_$NewMemoInsertingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String sessionId, String title,
            String content, bool isPublic)
        inserting,
  }) {
    return inserting(id, sessionId, title, content, isPublic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String sessionId, String title, String content,
            bool isPublic)?
        inserting,
  }) {
    return inserting?.call(id, sessionId, title, content, isPublic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String sessionId, String title, String content,
            bool isPublic)?
        inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(id, sessionId, title, content, isPublic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewMemoInserting value) inserting,
  }) {
    return inserting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewMemoInserting value)? inserting,
  }) {
    return inserting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewMemoInserting value)? inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(this);
    }
    return orElse();
  }
}

abstract class _NewMemoInserting implements NewMemo {
  const factory _NewMemoInserting(
      {required final String id,
      required final String sessionId,
      required final String title,
      required final String content,
      required final bool isPublic}) = _$NewMemoInsertingImpl;

  @override
  String get id;
  @override
  String get sessionId;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get isPublic;
  @override
  @JsonKey(ignore: true)
  _$$NewMemoInsertingImplCopyWith<_$NewMemoInsertingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
