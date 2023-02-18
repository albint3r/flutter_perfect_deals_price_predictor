// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SigningEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigningEventStarted value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SigningEventStarted value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigningEventStarted value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigningEventCopyWith<$Res> {
  factory $SigningEventCopyWith(
          SigningEvent value, $Res Function(SigningEvent) then) =
      _$SigningEventCopyWithImpl<$Res, SigningEvent>;
}

/// @nodoc
class _$SigningEventCopyWithImpl<$Res, $Val extends SigningEvent>
    implements $SigningEventCopyWith<$Res> {
  _$SigningEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SigningEventStartedCopyWith<$Res> {
  factory _$$_SigningEventStartedCopyWith(_$_SigningEventStarted value,
          $Res Function(_$_SigningEventStarted) then) =
      __$$_SigningEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SigningEventStartedCopyWithImpl<$Res>
    extends _$SigningEventCopyWithImpl<$Res, _$_SigningEventStarted>
    implements _$$_SigningEventStartedCopyWith<$Res> {
  __$$_SigningEventStartedCopyWithImpl(_$_SigningEventStarted _value,
      $Res Function(_$_SigningEventStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SigningEventStarted implements _SigningEventStarted {
  const _$_SigningEventStarted();

  @override
  String toString() {
    return 'SigningEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SigningEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigningEventStarted value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SigningEventStarted value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigningEventStarted value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _SigningEventStarted implements SigningEvent {
  const factory _SigningEventStarted() = _$_SigningEventStarted;
}

/// @nodoc
mixin _$SigningState {
  ISignInFormModel get signInFormModel => throw _privateConstructorUsedError;
  bool get isFormValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigningStateCopyWith<SigningState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigningStateCopyWith<$Res> {
  factory $SigningStateCopyWith(
          SigningState value, $Res Function(SigningState) then) =
      _$SigningStateCopyWithImpl<$Res, SigningState>;
  @useResult
  $Res call({ISignInFormModel signInFormModel, bool isFormValid});
}

/// @nodoc
class _$SigningStateCopyWithImpl<$Res, $Val extends SigningState>
    implements $SigningStateCopyWith<$Res> {
  _$SigningStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFormModel = null,
    Object? isFormValid = null,
  }) {
    return _then(_value.copyWith(
      signInFormModel: null == signInFormModel
          ? _value.signInFormModel
          : signInFormModel // ignore: cast_nullable_to_non_nullable
              as ISignInFormModel,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SigningStateCopyWith<$Res>
    implements $SigningStateCopyWith<$Res> {
  factory _$$_SigningStateCopyWith(
          _$_SigningState value, $Res Function(_$_SigningState) then) =
      __$$_SigningStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ISignInFormModel signInFormModel, bool isFormValid});
}

/// @nodoc
class __$$_SigningStateCopyWithImpl<$Res>
    extends _$SigningStateCopyWithImpl<$Res, _$_SigningState>
    implements _$$_SigningStateCopyWith<$Res> {
  __$$_SigningStateCopyWithImpl(
      _$_SigningState _value, $Res Function(_$_SigningState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFormModel = null,
    Object? isFormValid = null,
  }) {
    return _then(_$_SigningState(
      signInFormModel: null == signInFormModel
          ? _value.signInFormModel
          : signInFormModel // ignore: cast_nullable_to_non_nullable
              as ISignInFormModel,
      isFormValid: null == isFormValid
          ? _value.isFormValid
          : isFormValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SigningState implements _SigningState {
  const _$_SigningState(
      {required this.signInFormModel, this.isFormValid = false});

  @override
  final ISignInFormModel signInFormModel;
  @override
  @JsonKey()
  final bool isFormValid;

  @override
  String toString() {
    return 'SigningState(signInFormModel: $signInFormModel, isFormValid: $isFormValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SigningState &&
            (identical(other.signInFormModel, signInFormModel) ||
                other.signInFormModel == signInFormModel) &&
            (identical(other.isFormValid, isFormValid) ||
                other.isFormValid == isFormValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInFormModel, isFormValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SigningStateCopyWith<_$_SigningState> get copyWith =>
      __$$_SigningStateCopyWithImpl<_$_SigningState>(this, _$identity);
}

abstract class _SigningState implements SigningState {
  const factory _SigningState(
      {required final ISignInFormModel signInFormModel,
      final bool isFormValid}) = _$_SigningState;

  @override
  ISignInFormModel get signInFormModel;
  @override
  bool get isFormValid;
  @override
  @JsonKey(ignore: true)
  _$$_SigningStateCopyWith<_$_SigningState> get copyWith =>
      throw _privateConstructorUsedError;
}
