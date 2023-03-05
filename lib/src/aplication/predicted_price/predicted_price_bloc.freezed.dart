// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'predicted_price_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PredictedPriceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(double lat, double long) latLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(double lat, double long)? latLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(double lat, double long)? latLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PredictedPriceEventStart value) start,
    required TResult Function(_PredictedPriceLatLong value) latLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PredictedPriceEventStart value)? start,
    TResult? Function(_PredictedPriceLatLong value)? latLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PredictedPriceEventStart value)? start,
    TResult Function(_PredictedPriceLatLong value)? latLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictedPriceEventCopyWith<$Res> {
  factory $PredictedPriceEventCopyWith(
          PredictedPriceEvent value, $Res Function(PredictedPriceEvent) then) =
      _$PredictedPriceEventCopyWithImpl<$Res, PredictedPriceEvent>;
}

/// @nodoc
class _$PredictedPriceEventCopyWithImpl<$Res, $Val extends PredictedPriceEvent>
    implements $PredictedPriceEventCopyWith<$Res> {
  _$PredictedPriceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PredictedPriceEventStartCopyWith<$Res> {
  factory _$$_PredictedPriceEventStartCopyWith(
          _$_PredictedPriceEventStart value,
          $Res Function(_$_PredictedPriceEventStart) then) =
      __$$_PredictedPriceEventStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PredictedPriceEventStartCopyWithImpl<$Res>
    extends _$PredictedPriceEventCopyWithImpl<$Res, _$_PredictedPriceEventStart>
    implements _$$_PredictedPriceEventStartCopyWith<$Res> {
  __$$_PredictedPriceEventStartCopyWithImpl(_$_PredictedPriceEventStart _value,
      $Res Function(_$_PredictedPriceEventStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PredictedPriceEventStart implements _PredictedPriceEventStart {
  _$_PredictedPriceEventStart();

  @override
  String toString() {
    return 'PredictedPriceEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictedPriceEventStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(double lat, double long) latLong,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(double lat, double long)? latLong,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(double lat, double long)? latLong,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PredictedPriceEventStart value) start,
    required TResult Function(_PredictedPriceLatLong value) latLong,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PredictedPriceEventStart value)? start,
    TResult? Function(_PredictedPriceLatLong value)? latLong,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PredictedPriceEventStart value)? start,
    TResult Function(_PredictedPriceLatLong value)? latLong,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _PredictedPriceEventStart implements PredictedPriceEvent {
  factory _PredictedPriceEventStart() = _$_PredictedPriceEventStart;
}

/// @nodoc
abstract class _$$_PredictedPriceLatLongCopyWith<$Res> {
  factory _$$_PredictedPriceLatLongCopyWith(_$_PredictedPriceLatLong value,
          $Res Function(_$_PredictedPriceLatLong) then) =
      __$$_PredictedPriceLatLongCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double long});
}

/// @nodoc
class __$$_PredictedPriceLatLongCopyWithImpl<$Res>
    extends _$PredictedPriceEventCopyWithImpl<$Res, _$_PredictedPriceLatLong>
    implements _$$_PredictedPriceLatLongCopyWith<$Res> {
  __$$_PredictedPriceLatLongCopyWithImpl(_$_PredictedPriceLatLong _value,
      $Res Function(_$_PredictedPriceLatLong) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$_PredictedPriceLatLong(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_PredictedPriceLatLong implements _PredictedPriceLatLong {
  _$_PredictedPriceLatLong({required this.lat, required this.long});

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'PredictedPriceEvent.latLong(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictedPriceLatLong &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PredictedPriceLatLongCopyWith<_$_PredictedPriceLatLong> get copyWith =>
      __$$_PredictedPriceLatLongCopyWithImpl<_$_PredictedPriceLatLong>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(double lat, double long) latLong,
  }) {
    return latLong(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function(double lat, double long)? latLong,
  }) {
    return latLong?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(double lat, double long)? latLong,
    required TResult orElse(),
  }) {
    if (latLong != null) {
      return latLong(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PredictedPriceEventStart value) start,
    required TResult Function(_PredictedPriceLatLong value) latLong,
  }) {
    return latLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PredictedPriceEventStart value)? start,
    TResult? Function(_PredictedPriceLatLong value)? latLong,
  }) {
    return latLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PredictedPriceEventStart value)? start,
    TResult Function(_PredictedPriceLatLong value)? latLong,
    required TResult orElse(),
  }) {
    if (latLong != null) {
      return latLong(this);
    }
    return orElse();
  }
}

abstract class _PredictedPriceLatLong implements PredictedPriceEvent {
  factory _PredictedPriceLatLong(
      {required final double lat,
      required final double long}) = _$_PredictedPriceLatLong;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  _$$_PredictedPriceLatLongCopyWith<_$_PredictedPriceLatLong> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PredictedPriceState {
  bool get isLoading => throw _privateConstructorUsedError;
  FormGroup? get formGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PredictedPriceStateCopyWith<PredictedPriceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictedPriceStateCopyWith<$Res> {
  factory $PredictedPriceStateCopyWith(
          PredictedPriceState value, $Res Function(PredictedPriceState) then) =
      _$PredictedPriceStateCopyWithImpl<$Res, PredictedPriceState>;
  @useResult
  $Res call({bool isLoading, FormGroup? formGroup});
}

/// @nodoc
class _$PredictedPriceStateCopyWithImpl<$Res, $Val extends PredictedPriceState>
    implements $PredictedPriceStateCopyWith<$Res> {
  _$PredictedPriceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formGroup = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formGroup: freezed == formGroup
          ? _value.formGroup
          : formGroup // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PredictedPriceStateCopyWith<$Res>
    implements $PredictedPriceStateCopyWith<$Res> {
  factory _$$_PredictedPriceStateCopyWith(_$_PredictedPriceState value,
          $Res Function(_$_PredictedPriceState) then) =
      __$$_PredictedPriceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, FormGroup? formGroup});
}

/// @nodoc
class __$$_PredictedPriceStateCopyWithImpl<$Res>
    extends _$PredictedPriceStateCopyWithImpl<$Res, _$_PredictedPriceState>
    implements _$$_PredictedPriceStateCopyWith<$Res> {
  __$$_PredictedPriceStateCopyWithImpl(_$_PredictedPriceState _value,
      $Res Function(_$_PredictedPriceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? formGroup = freezed,
  }) {
    return _then(_$_PredictedPriceState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      formGroup: freezed == formGroup
          ? _value.formGroup
          : formGroup // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
    ));
  }
}

/// @nodoc

class _$_PredictedPriceState implements _PredictedPriceState {
  _$_PredictedPriceState({required this.isLoading, this.formGroup});

  @override
  final bool isLoading;
  @override
  final FormGroup? formGroup;

  @override
  String toString() {
    return 'PredictedPriceState(isLoading: $isLoading, formGroup: $formGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictedPriceState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.formGroup, formGroup) ||
                other.formGroup == formGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, formGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PredictedPriceStateCopyWith<_$_PredictedPriceState> get copyWith =>
      __$$_PredictedPriceStateCopyWithImpl<_$_PredictedPriceState>(
          this, _$identity);
}

abstract class _PredictedPriceState implements PredictedPriceState {
  factory _PredictedPriceState(
      {required final bool isLoading,
      final FormGroup? formGroup}) = _$_PredictedPriceState;

  @override
  bool get isLoading;
  @override
  FormGroup? get formGroup;
  @override
  @JsonKey(ignore: true)
  _$$_PredictedPriceStateCopyWith<_$_PredictedPriceState> get copyWith =>
      throw _privateConstructorUsedError;
}
