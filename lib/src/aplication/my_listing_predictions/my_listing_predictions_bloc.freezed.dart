// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_listing_predictions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyListingPredictionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MyListingPredictionsEvent value) start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MyListingPredictionsEvent value)? start,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyListingPredictionsEvent value)? start,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyListingPredictionsEventCopyWith<$Res> {
  factory $MyListingPredictionsEventCopyWith(MyListingPredictionsEvent value,
          $Res Function(MyListingPredictionsEvent) then) =
      _$MyListingPredictionsEventCopyWithImpl<$Res, MyListingPredictionsEvent>;
}

/// @nodoc
class _$MyListingPredictionsEventCopyWithImpl<$Res,
        $Val extends MyListingPredictionsEvent>
    implements $MyListingPredictionsEventCopyWith<$Res> {
  _$MyListingPredictionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MyListingPredictionsEventCopyWith<$Res> {
  factory _$$_MyListingPredictionsEventCopyWith(
          _$_MyListingPredictionsEvent value,
          $Res Function(_$_MyListingPredictionsEvent) then) =
      __$$_MyListingPredictionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MyListingPredictionsEventCopyWithImpl<$Res>
    extends _$MyListingPredictionsEventCopyWithImpl<$Res,
        _$_MyListingPredictionsEvent>
    implements _$$_MyListingPredictionsEventCopyWith<$Res> {
  __$$_MyListingPredictionsEventCopyWithImpl(
      _$_MyListingPredictionsEvent _value,
      $Res Function(_$_MyListingPredictionsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MyListingPredictionsEvent implements _MyListingPredictionsEvent {
  _$_MyListingPredictionsEvent();

  @override
  String toString() {
    return 'MyListingPredictionsEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyListingPredictionsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
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
    required TResult Function(_MyListingPredictionsEvent value) start,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MyListingPredictionsEvent value)? start,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MyListingPredictionsEvent value)? start,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _MyListingPredictionsEvent implements MyListingPredictionsEvent {
  factory _MyListingPredictionsEvent() = _$_MyListingPredictionsEvent;
}

/// @nodoc
mixin _$MyListingPredictionsState {
  bool get isLoading => throw _privateConstructorUsedError;
  MyListings? get myListings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyListingPredictionsStateCopyWith<MyListingPredictionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyListingPredictionsStateCopyWith<$Res> {
  factory $MyListingPredictionsStateCopyWith(MyListingPredictionsState value,
          $Res Function(MyListingPredictionsState) then) =
      _$MyListingPredictionsStateCopyWithImpl<$Res, MyListingPredictionsState>;
  @useResult
  $Res call({bool isLoading, MyListings? myListings});

  $MyListingsCopyWith<$Res>? get myListings;
}

/// @nodoc
class _$MyListingPredictionsStateCopyWithImpl<$Res,
        $Val extends MyListingPredictionsState>
    implements $MyListingPredictionsStateCopyWith<$Res> {
  _$MyListingPredictionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? myListings = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      myListings: freezed == myListings
          ? _value.myListings
          : myListings // ignore: cast_nullable_to_non_nullable
              as MyListings?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MyListingsCopyWith<$Res>? get myListings {
    if (_value.myListings == null) {
      return null;
    }

    return $MyListingsCopyWith<$Res>(_value.myListings!, (value) {
      return _then(_value.copyWith(myListings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyListingPredictionsStateCopyWith<$Res>
    implements $MyListingPredictionsStateCopyWith<$Res> {
  factory _$$_MyListingPredictionsStateCopyWith(
          _$_MyListingPredictionsState value,
          $Res Function(_$_MyListingPredictionsState) then) =
      __$$_MyListingPredictionsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, MyListings? myListings});

  @override
  $MyListingsCopyWith<$Res>? get myListings;
}

/// @nodoc
class __$$_MyListingPredictionsStateCopyWithImpl<$Res>
    extends _$MyListingPredictionsStateCopyWithImpl<$Res,
        _$_MyListingPredictionsState>
    implements _$$_MyListingPredictionsStateCopyWith<$Res> {
  __$$_MyListingPredictionsStateCopyWithImpl(
      _$_MyListingPredictionsState _value,
      $Res Function(_$_MyListingPredictionsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? myListings = freezed,
  }) {
    return _then(_$_MyListingPredictionsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      myListings: freezed == myListings
          ? _value.myListings
          : myListings // ignore: cast_nullable_to_non_nullable
              as MyListings?,
    ));
  }
}

/// @nodoc

class _$_MyListingPredictionsState implements _MyListingPredictionsState {
  _$_MyListingPredictionsState({required this.isLoading, this.myListings});

  @override
  final bool isLoading;
  @override
  final MyListings? myListings;

  @override
  String toString() {
    return 'MyListingPredictionsState(isLoading: $isLoading, myListings: $myListings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyListingPredictionsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.myListings, myListings) ||
                other.myListings == myListings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, myListings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyListingPredictionsStateCopyWith<_$_MyListingPredictionsState>
      get copyWith => __$$_MyListingPredictionsStateCopyWithImpl<
          _$_MyListingPredictionsState>(this, _$identity);
}

abstract class _MyListingPredictionsState implements MyListingPredictionsState {
  factory _MyListingPredictionsState(
      {required final bool isLoading,
      final MyListings? myListings}) = _$_MyListingPredictionsState;

  @override
  bool get isLoading;
  @override
  MyListings? get myListings;
  @override
  @JsonKey(ignore: true)
  _$$_MyListingPredictionsStateCopyWith<_$_MyListingPredictionsState>
      get copyWith => throw _privateConstructorUsedError;
}
