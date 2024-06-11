// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sessions_sort_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionsSortState {
  SessionsSortPivot get pivot => throw _privateConstructorUsedError;
  SortOrder get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionsSortStateCopyWith<SessionsSortState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsSortStateCopyWith<$Res> {
  factory $SessionsSortStateCopyWith(
          SessionsSortState value, $Res Function(SessionsSortState) then) =
      _$SessionsSortStateCopyWithImpl<$Res, SessionsSortState>;
  @useResult
  $Res call({SessionsSortPivot pivot, SortOrder order});
}

/// @nodoc
class _$SessionsSortStateCopyWithImpl<$Res, $Val extends SessionsSortState>
    implements $SessionsSortStateCopyWith<$Res> {
  _$SessionsSortStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pivot = null,
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      pivot: null == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as SessionsSortPivot,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsSortStateImplCopyWith<$Res>
    implements $SessionsSortStateCopyWith<$Res> {
  factory _$$SessionsSortStateImplCopyWith(_$SessionsSortStateImpl value,
          $Res Function(_$SessionsSortStateImpl) then) =
      __$$SessionsSortStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SessionsSortPivot pivot, SortOrder order});
}

/// @nodoc
class __$$SessionsSortStateImplCopyWithImpl<$Res>
    extends _$SessionsSortStateCopyWithImpl<$Res, _$SessionsSortStateImpl>
    implements _$$SessionsSortStateImplCopyWith<$Res> {
  __$$SessionsSortStateImplCopyWithImpl(_$SessionsSortStateImpl _value,
      $Res Function(_$SessionsSortStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pivot = null,
    Object? order = null,
  }) {
    return _then(_$SessionsSortStateImpl(
      pivot: null == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as SessionsSortPivot,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc

class _$SessionsSortStateImpl implements _SessionsSortState {
  const _$SessionsSortStateImpl(
      {this.pivot = SessionsSortPivot.scenarioTitle,
      this.order = SortOrder.asc});

  @override
  @JsonKey()
  final SessionsSortPivot pivot;
  @override
  @JsonKey()
  final SortOrder order;

  @override
  String toString() {
    return 'SessionsSortState(pivot: $pivot, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsSortStateImpl &&
            (identical(other.pivot, pivot) || other.pivot == pivot) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pivot, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsSortStateImplCopyWith<_$SessionsSortStateImpl> get copyWith =>
      __$$SessionsSortStateImplCopyWithImpl<_$SessionsSortStateImpl>(
          this, _$identity);
}

abstract class _SessionsSortState implements SessionsSortState {
  const factory _SessionsSortState(
      {final SessionsSortPivot pivot,
      final SortOrder order}) = _$SessionsSortStateImpl;

  @override
  SessionsSortPivot get pivot;
  @override
  SortOrder get order;
  @override
  @JsonKey(ignore: true)
  _$$SessionsSortStateImplCopyWith<_$SessionsSortStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
