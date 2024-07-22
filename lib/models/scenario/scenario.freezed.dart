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
  ID get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'trpg_system')
  TRPGSystem get system => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Character> get characters => throw _privateConstructorUsedError;
  String? get kana => throw _privateConstructorUsedError;
  String? get keyVisualUrl => throw _privateConstructorUsedError;
  String? get storeUrl => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  /// Serializes this Scenario to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScenarioCopyWith<Scenario> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScenarioCopyWith<$Res> {
  factory $ScenarioCopyWith(Scenario value, $Res Function(Scenario) then) =
      _$ScenarioCopyWithImpl<$Res, Scenario>;
  @useResult
  $Res call(
      {ID id,
      @JsonKey(name: 'trpg_system') TRPGSystem system,
      String title,
      List<Character> characters,
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

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? title = null,
    Object? characters = null,
    Object? kana = freezed,
    Object? keyVisualUrl = freezed,
    Object? storeUrl = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
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
      {ID id,
      @JsonKey(name: 'trpg_system') TRPGSystem system,
      String title,
      List<Character> characters,
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

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? title = null,
    Object? characters = null,
    Object? kana = freezed,
    Object? keyVisualUrl = freezed,
    Object? storeUrl = freezed,
    Object? author = freezed,
  }) {
    return _then(_$ScenarioImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      system: null == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
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

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ScenarioImpl extends _Scenario {
  _$ScenarioImpl(
      {required this.id,
      @JsonKey(name: 'trpg_system') required this.system,
      required this.title,
      final List<Character> characters = const [],
      this.kana,
      this.keyVisualUrl,
      this.storeUrl,
      this.author})
      : assert(
            kana == null ||
                kana == '' ||
                RegExp(r'^[0-9a-zA-Zァ-ンヴー ]+$').hasMatch(kana!),
            'フリガナに全角カタカナ以外の文字が含まれています'),
        _characters = characters,
        super._();

  factory _$ScenarioImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScenarioImplFromJson(json);

  @override
  final ID id;
  @override
  @JsonKey(name: 'trpg_system')
  final TRPGSystem system;
  @override
  final String title;
  final List<Character> _characters;
  @override
  @JsonKey()
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

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
    return 'Scenario(id: $id, system: $system, title: $title, characters: $characters, kana: $kana, keyVisualUrl: $keyVisualUrl, storeUrl: $storeUrl, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScenarioImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.keyVisualUrl, keyVisualUrl) ||
                other.keyVisualUrl == keyVisualUrl) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      system,
      title,
      const DeepCollectionEquality().hash(_characters),
      kana,
      keyVisualUrl,
      storeUrl,
      author);

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _Scenario extends Scenario {
  factory _Scenario(
      {required final ID id,
      @JsonKey(name: 'trpg_system') required final TRPGSystem system,
      required final String title,
      final List<Character> characters,
      final String? kana,
      final String? keyVisualUrl,
      final String? storeUrl,
      final String? author}) = _$ScenarioImpl;
  _Scenario._() : super._();

  factory _Scenario.fromJson(Map<String, dynamic> json) =
      _$ScenarioImpl.fromJson;

  @override
  ID get id;
  @override
  @JsonKey(name: 'trpg_system')
  TRPGSystem get system;
  @override
  String get title;
  @override
  List<Character> get characters;
  @override
  String? get kana;
  @override
  String? get keyVisualUrl;
  @override
  String? get storeUrl;
  @override
  String? get author;

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScenarioImplCopyWith<_$ScenarioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
