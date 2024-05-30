// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scenario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Scenario _$ScenarioFromJson(Map<String, dynamic> json) {
  return _Scenario.fromJson(json);
}

/// @nodoc
mixin _$Scenario {
  TRPGSystem get trpgSystem => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get kana => throw _privateConstructorUsedError;
  String? get keyVisualUrl => throw _privateConstructorUsedError;
  String? get storeUrl => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScenarioCopyWith<Scenario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioCopyWith<$Res> {
  factory $ScenarioCopyWith(Scenario value, $Res Function(Scenario) then) =
      _$ScenarioCopyWithImpl<$Res, Scenario>;
  @useResult
  $Res call(
      {TRPGSystem trpgSystem,
      String title,
      String? kana,
      String? keyVisualUrl,
      String? storeUrl,
      String? author});
}

/// @nodoc
class _$ScenarioCopyWithImpl<$Res, $Val extends Scenario>
    implements $ScenarioCopyWith<$Res> {
  _$ScenarioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trpgSystem = null,
    Object? title = null,
    Object? kana = freezed,
    Object? keyVisualUrl = freezed,
    Object? storeUrl = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      trpgSystem: null == trpgSystem
          ? _value.trpgSystem
          : trpgSystem // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      kana: freezed == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      keyVisualUrl: freezed == keyVisualUrl
          ? _value.keyVisualUrl
          : keyVisualUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _value.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScenarioImplCopyWith<$Res>
    implements $ScenarioCopyWith<$Res> {
  factory _$$ScenarioImplCopyWith(
          _$ScenarioImpl value, $Res Function(_$ScenarioImpl) then) =
      __$$ScenarioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TRPGSystem trpgSystem,
      String title,
      String? kana,
      String? keyVisualUrl,
      String? storeUrl,
      String? author});
}

/// @nodoc
class __$$ScenarioImplCopyWithImpl<$Res>
    extends _$ScenarioCopyWithImpl<$Res, _$ScenarioImpl>
    implements _$$ScenarioImplCopyWith<$Res> {
  __$$ScenarioImplCopyWithImpl(
      _$ScenarioImpl _value, $Res Function(_$ScenarioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trpgSystem = null,
    Object? title = null,
    Object? kana = freezed,
    Object? keyVisualUrl = freezed,
    Object? storeUrl = freezed,
    Object? author = freezed,
  }) {
    return _then(_$ScenarioImpl(
      trpgSystem: null == trpgSystem
          ? _value.trpgSystem
          : trpgSystem // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      kana: freezed == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      keyVisualUrl: freezed == keyVisualUrl
          ? _value.keyVisualUrl
          : keyVisualUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _value.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScenarioImpl implements _Scenario {
  _$ScenarioImpl(
      {required this.trpgSystem,
      required this.title,
      this.kana,
      this.keyVisualUrl,
      this.storeUrl,
      this.author})
      : assert(kana == null || RegExp(r'^[ァ-ンヴー]+$').hasMatch(kana!),
            'フリガナに全角カタカナ以外の文字が含まれています');

  factory _$ScenarioImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScenarioImplFromJson(json);

  @override
  final TRPGSystem trpgSystem;
  @override
  final String title;
  @override
  final String? kana;
  @override
  final String? keyVisualUrl;
  @override
  final String? storeUrl;
  @override
  final String? author;

  @override
  String toString() {
    return 'Scenario(trpgSystem: $trpgSystem, title: $title, kana: $kana, keyVisualUrl: $keyVisualUrl, storeUrl: $storeUrl, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScenarioImpl &&
            (identical(other.trpgSystem, trpgSystem) ||
                other.trpgSystem == trpgSystem) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.keyVisualUrl, keyVisualUrl) ||
                other.keyVisualUrl == keyVisualUrl) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, trpgSystem, title, kana, keyVisualUrl, storeUrl, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScenarioImplCopyWith<_$ScenarioImpl> get copyWith =>
      __$$ScenarioImplCopyWithImpl<_$ScenarioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScenarioImplToJson(
      this,
    );
  }
}

abstract class _Scenario implements Scenario {
  factory _Scenario(
      {required final TRPGSystem trpgSystem,
      required final String title,
      final String? kana,
      final String? keyVisualUrl,
      final String? storeUrl,
      final String? author}) = _$ScenarioImpl;

  factory _Scenario.fromJson(Map<String, dynamic> json) =
      _$ScenarioImpl.fromJson;

  @override
  TRPGSystem get trpgSystem;
  @override
  String get title;
  @override
  String? get kana;
  @override
  String? get keyVisualUrl;
  @override
  String? get storeUrl;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$$ScenarioImplCopyWith<_$ScenarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
