// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_prediction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressPrediction _$AddressPredictionFromJson(Map<String, dynamic> json) {
  return _AddressPrediction.fromJson(json);
}

/// @nodoc
mixin _$AddressPrediction {
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstrings>? get matchedSubstrings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String? get placeId => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'structured_formatting')
  Map<String, dynamic>? get structuredFormatting =>
      throw _privateConstructorUsedError;
  List<dynamic>? get terms => throw _privateConstructorUsedError;
  List<dynamic>? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressPredictionCopyWith<AddressPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressPredictionCopyWith<$Res> {
  factory $AddressPredictionCopyWith(
          AddressPrediction value, $Res Function(AddressPrediction) then) =
      _$AddressPredictionCopyWithImpl<$Res, AddressPrediction>;
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'matched_substrings')
          List<MatchedSubstrings>? matchedSubstrings,
      @JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      @JsonKey(name: 'structured_formatting')
          Map<String, dynamic>? structuredFormatting,
      List<dynamic>? terms,
      List<dynamic>? type});
}

/// @nodoc
class _$AddressPredictionCopyWithImpl<$Res, $Val extends AddressPrediction>
    implements $AddressPredictionCopyWith<$Res> {
  _$AddressPredictionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? matchedSubstrings = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      matchedSubstrings: freezed == matchedSubstrings
          ? _value.matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstrings>?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      structuredFormatting: freezed == structuredFormatting
          ? _value.structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      terms: freezed == terms
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressPredictionCopyWith<$Res>
    implements $AddressPredictionCopyWith<$Res> {
  factory _$$_AddressPredictionCopyWith(_$_AddressPrediction value,
          $Res Function(_$_AddressPrediction) then) =
      __$$_AddressPredictionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      @JsonKey(name: 'matched_substrings')
          List<MatchedSubstrings>? matchedSubstrings,
      @JsonKey(name: 'place_id')
          String? placeId,
      String? reference,
      @JsonKey(name: 'structured_formatting')
          Map<String, dynamic>? structuredFormatting,
      List<dynamic>? terms,
      List<dynamic>? type});
}

/// @nodoc
class __$$_AddressPredictionCopyWithImpl<$Res>
    extends _$AddressPredictionCopyWithImpl<$Res, _$_AddressPrediction>
    implements _$$_AddressPredictionCopyWith<$Res> {
  __$$_AddressPredictionCopyWithImpl(
      _$_AddressPrediction _value, $Res Function(_$_AddressPrediction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? matchedSubstrings = freezed,
    Object? placeId = freezed,
    Object? reference = freezed,
    Object? structuredFormatting = freezed,
    Object? terms = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_AddressPrediction(
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == matchedSubstrings
          ? _value._matchedSubstrings
          : matchedSubstrings // ignore: cast_nullable_to_non_nullable
              as List<MatchedSubstrings>?,
      freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == structuredFormatting
          ? _value._structuredFormatting
          : structuredFormatting // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      freezed == terms
          ? _value._terms
          : terms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressPrediction extends _AddressPrediction {
  _$_AddressPrediction(
      this.description,
      @JsonKey(name: 'matched_substrings')
          final List<MatchedSubstrings>? matchedSubstrings,
      @JsonKey(name: 'place_id')
          this.placeId,
      this.reference,
      @JsonKey(name: 'structured_formatting')
          final Map<String, dynamic>? structuredFormatting,
      final List<dynamic>? terms,
      final List<dynamic>? type)
      : _matchedSubstrings = matchedSubstrings,
        _structuredFormatting = structuredFormatting,
        _terms = terms,
        _type = type,
        super._();

  factory _$_AddressPrediction.fromJson(Map<String, dynamic> json) =>
      _$$_AddressPredictionFromJson(json);

  @override
  final String? description;
  final List<MatchedSubstrings>? _matchedSubstrings;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstrings>? get matchedSubstrings {
    final value = _matchedSubstrings;
    if (value == null) return null;
    if (_matchedSubstrings is EqualUnmodifiableListView)
      return _matchedSubstrings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'place_id')
  final String? placeId;
  @override
  final String? reference;
  final Map<String, dynamic>? _structuredFormatting;
  @override
  @JsonKey(name: 'structured_formatting')
  Map<String, dynamic>? get structuredFormatting {
    final value = _structuredFormatting;
    if (value == null) return null;
    if (_structuredFormatting is EqualUnmodifiableMapView)
      return _structuredFormatting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<dynamic>? _terms;
  @override
  List<dynamic>? get terms {
    final value = _terms;
    if (value == null) return null;
    if (_terms is EqualUnmodifiableListView) return _terms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _type;
  @override
  List<dynamic>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressPrediction(description: $description, matchedSubstrings: $matchedSubstrings, placeId: $placeId, reference: $reference, structuredFormatting: $structuredFormatting, terms: $terms, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressPrediction &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._matchedSubstrings, _matchedSubstrings) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            const DeepCollectionEquality()
                .equals(other._structuredFormatting, _structuredFormatting) &&
            const DeepCollectionEquality().equals(other._terms, _terms) &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      const DeepCollectionEquality().hash(_matchedSubstrings),
      placeId,
      reference,
      const DeepCollectionEquality().hash(_structuredFormatting),
      const DeepCollectionEquality().hash(_terms),
      const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressPredictionCopyWith<_$_AddressPrediction> get copyWith =>
      __$$_AddressPredictionCopyWithImpl<_$_AddressPrediction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressPredictionToJson(
      this,
    );
  }
}

abstract class _AddressPrediction extends AddressPrediction {
  factory _AddressPrediction(
      final String? description,
      @JsonKey(name: 'matched_substrings')
          final List<MatchedSubstrings>? matchedSubstrings,
      @JsonKey(name: 'place_id')
          final String? placeId,
      final String? reference,
      @JsonKey(name: 'structured_formatting')
          final Map<String, dynamic>? structuredFormatting,
      final List<dynamic>? terms,
      final List<dynamic>? type) = _$_AddressPrediction;
  _AddressPrediction._() : super._();

  factory _AddressPrediction.fromJson(Map<String, dynamic> json) =
      _$_AddressPrediction.fromJson;

  @override
  String? get description;
  @override
  @JsonKey(name: 'matched_substrings')
  List<MatchedSubstrings>? get matchedSubstrings;
  @override
  @JsonKey(name: 'place_id')
  String? get placeId;
  @override
  String? get reference;
  @override
  @JsonKey(name: 'structured_formatting')
  Map<String, dynamic>? get structuredFormatting;
  @override
  List<dynamic>? get terms;
  @override
  List<dynamic>? get type;
  @override
  @JsonKey(ignore: true)
  _$$_AddressPredictionCopyWith<_$_AddressPrediction> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchedSubstrings _$MatchedSubstringsFromJson(Map<String, dynamic> json) {
  return _MatchedSubstrings.fromJson(json);
}

/// @nodoc
mixin _$MatchedSubstrings {
  int? get length => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchedSubstringsCopyWith<MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchedSubstringsCopyWith<$Res> {
  factory $MatchedSubstringsCopyWith(
          MatchedSubstrings value, $Res Function(MatchedSubstrings) then) =
      _$MatchedSubstringsCopyWithImpl<$Res, MatchedSubstrings>;
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class _$MatchedSubstringsCopyWithImpl<$Res, $Val extends MatchedSubstrings>
    implements $MatchedSubstringsCopyWith<$Res> {
  _$MatchedSubstringsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchedSubstringsCopyWith<$Res>
    implements $MatchedSubstringsCopyWith<$Res> {
  factory _$$_MatchedSubstringsCopyWith(_$_MatchedSubstrings value,
          $Res Function(_$_MatchedSubstrings) then) =
      __$$_MatchedSubstringsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? length, int? offset});
}

/// @nodoc
class __$$_MatchedSubstringsCopyWithImpl<$Res>
    extends _$MatchedSubstringsCopyWithImpl<$Res, _$_MatchedSubstrings>
    implements _$$_MatchedSubstringsCopyWith<$Res> {
  __$$_MatchedSubstringsCopyWithImpl(
      _$_MatchedSubstrings _value, $Res Function(_$_MatchedSubstrings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_MatchedSubstrings(
      freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchedSubstrings extends _MatchedSubstrings {
  _$_MatchedSubstrings(this.length, this.offset) : super._();

  factory _$_MatchedSubstrings.fromJson(Map<String, dynamic> json) =>
      _$$_MatchedSubstringsFromJson(json);

  @override
  final int? length;
  @override
  final int? offset;

  @override
  String toString() {
    return 'MatchedSubstrings(length: $length, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchedSubstrings &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchedSubstringsCopyWith<_$_MatchedSubstrings> get copyWith =>
      __$$_MatchedSubstringsCopyWithImpl<_$_MatchedSubstrings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchedSubstringsToJson(
      this,
    );
  }
}

abstract class _MatchedSubstrings extends MatchedSubstrings {
  factory _MatchedSubstrings(final int? length, final int? offset) =
      _$_MatchedSubstrings;
  _MatchedSubstrings._() : super._();

  factory _MatchedSubstrings.fromJson(Map<String, dynamic> json) =
      _$_MatchedSubstrings.fromJson;

  @override
  int? get length;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$_MatchedSubstringsCopyWith<_$_MatchedSubstrings> get copyWith =>
      throw _privateConstructorUsedError;
}
