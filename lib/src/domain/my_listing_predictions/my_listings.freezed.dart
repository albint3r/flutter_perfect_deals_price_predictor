// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_listings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyListings _$MyListingsFromJson(Map<String, dynamic> json) {
  return _MyListings.fromJson(json);
}

/// @nodoc
mixin _$MyListings {
  List<Listing> get listings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyListingsCopyWith<MyListings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyListingsCopyWith<$Res> {
  factory $MyListingsCopyWith(
          MyListings value, $Res Function(MyListings) then) =
      _$MyListingsCopyWithImpl<$Res, MyListings>;
  @useResult
  $Res call({List<Listing> listings});
}

/// @nodoc
class _$MyListingsCopyWithImpl<$Res, $Val extends MyListings>
    implements $MyListingsCopyWith<$Res> {
  _$MyListingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
  }) {
    return _then(_value.copyWith(
      listings: null == listings
          ? _value.listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Listing>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyListingsCopyWith<$Res>
    implements $MyListingsCopyWith<$Res> {
  factory _$$_MyListingsCopyWith(
          _$_MyListings value, $Res Function(_$_MyListings) then) =
      __$$_MyListingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Listing> listings});
}

/// @nodoc
class __$$_MyListingsCopyWithImpl<$Res>
    extends _$MyListingsCopyWithImpl<$Res, _$_MyListings>
    implements _$$_MyListingsCopyWith<$Res> {
  __$$_MyListingsCopyWithImpl(
      _$_MyListings _value, $Res Function(_$_MyListings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listings = null,
  }) {
    return _then(_$_MyListings(
      listings: null == listings
          ? _value._listings
          : listings // ignore: cast_nullable_to_non_nullable
              as List<Listing>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyListings extends _MyListings {
  _$_MyListings({required final List<Listing> listings})
      : _listings = listings,
        super._();

  factory _$_MyListings.fromJson(Map<String, dynamic> json) =>
      _$$_MyListingsFromJson(json);

  final List<Listing> _listings;
  @override
  List<Listing> get listings {
    if (_listings is EqualUnmodifiableListView) return _listings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listings);
  }

  @override
  String toString() {
    return 'MyListings(listings: $listings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyListings &&
            const DeepCollectionEquality().equals(other._listings, _listings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyListingsCopyWith<_$_MyListings> get copyWith =>
      __$$_MyListingsCopyWithImpl<_$_MyListings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyListingsToJson(
      this,
    );
  }
}

abstract class _MyListings extends MyListings {
  factory _MyListings({required final List<Listing> listings}) = _$_MyListings;
  _MyListings._() : super._();

  factory _MyListings.fromJson(Map<String, dynamic> json) =
      _$_MyListings.fromJson;

  @override
  List<Listing> get listings;
  @override
  @JsonKey(ignore: true)
  _$$_MyListingsCopyWith<_$_MyListings> get copyWith =>
      throw _privateConstructorUsedError;
}
