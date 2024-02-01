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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Scenario _$ScenarioFromJson(Map<String, dynamic> json) {
  return _Scenario.fromJson(json);
}

/// @nodoc
mixin _$Scenario {
  TRPGSystem get system => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get storeUrl => throw _privateConstructorUsedError;
  String? get kana => throw _privateConstructorUsedError;
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
      {TRPGSystem system,
      String name,
      String? imageUrl,
      String? storeUrl,
      String? kana,
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
    Object? system = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? storeUrl = freezed,
    Object? kana = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _value.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      kana: freezed == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
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
      {TRPGSystem system,
      String name,
      String? imageUrl,
      String? storeUrl,
      String? kana,
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
    Object? system = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? storeUrl = freezed,
    Object? kana = freezed,
    Object? author = freezed,
  }) {
    return _then(_$ScenarioImpl(
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _value.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      kana: freezed == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
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
      {required this.system,
      required this.name,
      this.imageUrl,
      this.storeUrl,
      this.kana,
      this.author})
      : assert(kana == null || RegExp(r'^[ァ-ンヴー]+$').hasMatch(kana!),
            'フリガナに全角カタカナ以外の文字が含まれています');

  factory _$ScenarioImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScenarioImplFromJson(json);

  @override
  final TRPGSystem system;
  @override
  final String name;
  @override
  final String? imageUrl;
  @override
  final String? storeUrl;
  @override
  final String? kana;
  @override
  final String? author;

  @override
  String toString() {
    return 'Scenario(system: $system, name: $name, imageUrl: $imageUrl, storeUrl: $storeUrl, kana: $kana, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScenarioImpl &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, system, name, imageUrl, storeUrl, kana, author);

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
      {required final TRPGSystem system,
      required final String name,
      final String? imageUrl,
      final String? storeUrl,
      final String? kana,
      final String? author}) = _$ScenarioImpl;

  factory _Scenario.fromJson(Map<String, dynamic> json) =
      _$ScenarioImpl.fromJson;

  @override
  TRPGSystem get system;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  String? get storeUrl;
  @override
  String? get kana;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$$ScenarioImplCopyWith<_$ScenarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
