// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ISignInFormModel signInFormModel)
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ISignInFormModel signInFormModel)?
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ISignInFormModel signInFormModel)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) initial,
    required TResult Function(AuthEventCreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventCreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
    TResult Function(AuthEventCreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthEventInitialCopyWith<$Res> {
  factory _$$AuthEventInitialCopyWith(
          _$AuthEventInitial value, $Res Function(_$AuthEventInitial) then) =
      __$$AuthEventInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventInitialCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventInitial>
    implements _$$AuthEventInitialCopyWith<$Res> {
  __$$AuthEventInitialCopyWithImpl(
      _$AuthEventInitial _value, $Res Function(_$AuthEventInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventInitial implements AuthEventInitial {
  const _$AuthEventInitial();

  @override
  String toString() {
    return 'AuthEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ISignInFormModel signInFormModel)
        createUserWithEmailAndPassword,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ISignInFormModel signInFormModel)?
        createUserWithEmailAndPassword,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ISignInFormModel signInFormModel)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) initial,
    required TResult Function(AuthEventCreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventCreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
    TResult Function(AuthEventCreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthEventInitial implements AuthEvent {
  const factory AuthEventInitial() = _$AuthEventInitial;
}

/// @nodoc
abstract class _$$AuthEventCreateUserWithEmailAndPasswordCopyWith<$Res> {
  factory _$$AuthEventCreateUserWithEmailAndPasswordCopyWith(
          _$AuthEventCreateUserWithEmailAndPassword value,
          $Res Function(_$AuthEventCreateUserWithEmailAndPassword) then) =
      __$$AuthEventCreateUserWithEmailAndPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({ISignInFormModel signInFormModel});
}

/// @nodoc
class __$$AuthEventCreateUserWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$AuthEventCreateUserWithEmailAndPassword>
    implements _$$AuthEventCreateUserWithEmailAndPasswordCopyWith<$Res> {
  __$$AuthEventCreateUserWithEmailAndPasswordCopyWithImpl(
      _$AuthEventCreateUserWithEmailAndPassword _value,
      $Res Function(_$AuthEventCreateUserWithEmailAndPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signInFormModel = null,
  }) {
    return _then(_$AuthEventCreateUserWithEmailAndPassword(
      signInFormModel: null == signInFormModel
          ? _value.signInFormModel
          : signInFormModel // ignore: cast_nullable_to_non_nullable
              as ISignInFormModel,
    ));
  }
}

/// @nodoc

class _$AuthEventCreateUserWithEmailAndPassword
    implements AuthEventCreateUserWithEmailAndPassword {
  const _$AuthEventCreateUserWithEmailAndPassword(
      {required this.signInFormModel});

  @override
  final ISignInFormModel signInFormModel;

  @override
  String toString() {
    return 'AuthEvent.createUserWithEmailAndPassword(signInFormModel: $signInFormModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventCreateUserWithEmailAndPassword &&
            (identical(other.signInFormModel, signInFormModel) ||
                other.signInFormModel == signInFormModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signInFormModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventCreateUserWithEmailAndPasswordCopyWith<
          _$AuthEventCreateUserWithEmailAndPassword>
      get copyWith => __$$AuthEventCreateUserWithEmailAndPasswordCopyWithImpl<
          _$AuthEventCreateUserWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ISignInFormModel signInFormModel)
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword(signInFormModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ISignInFormModel signInFormModel)?
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword?.call(signInFormModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ISignInFormModel signInFormModel)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(signInFormModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) initial,
    required TResult Function(AuthEventCreateUserWithEmailAndPassword value)
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventCreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
  }) {
    return createUserWithEmailAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
    TResult Function(AuthEventCreateUserWithEmailAndPassword value)?
        createUserWithEmailAndPassword,
    required TResult orElse(),
  }) {
    if (createUserWithEmailAndPassword != null) {
      return createUserWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class AuthEventCreateUserWithEmailAndPassword implements AuthEvent {
  const factory AuthEventCreateUserWithEmailAndPassword(
          {required final ISignInFormModel signInFormModel}) =
      _$AuthEventCreateUserWithEmailAndPassword;

  ISignInFormModel get signInFormModel;
  @JsonKey(ignore: true)
  _$$AuthEventCreateUserWithEmailAndPasswordCopyWith<
          _$AuthEventCreateUserWithEmailAndPassword>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  IAuthDataService get auth => throw _privateConstructorUsedError;
  int get hashTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IAuthDataService auth, int hashTime) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth, int hashTime)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth, int hashTime)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateWaiting value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateWaiting value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateWaiting value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({IAuthDataService auth, int hashTime});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? hashTime = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as IAuthDataService,
      hashTime: null == hashTime
          ? _value.hashTime
          : hashTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateWaitingCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateWaitingCopyWith(
          _$AuthStateWaiting value, $Res Function(_$AuthStateWaiting) then) =
      __$$AuthStateWaitingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IAuthDataService auth, int hashTime});
}

/// @nodoc
class __$$AuthStateWaitingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateWaiting>
    implements _$$AuthStateWaitingCopyWith<$Res> {
  __$$AuthStateWaitingCopyWithImpl(
      _$AuthStateWaiting _value, $Res Function(_$AuthStateWaiting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? hashTime = null,
  }) {
    return _then(_$AuthStateWaiting(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as IAuthDataService,
      hashTime: null == hashTime
          ? _value.hashTime
          : hashTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AuthStateWaiting implements AuthStateWaiting {
  const _$AuthStateWaiting({required this.auth, required this.hashTime});

  @override
  final IAuthDataService auth;
  @override
  final int hashTime;

  @override
  String toString() {
    return 'AuthState.initial(auth: $auth, hashTime: $hashTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateWaiting &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.hashTime, hashTime) ||
                other.hashTime == hashTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, hashTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateWaitingCopyWith<_$AuthStateWaiting> get copyWith =>
      __$$AuthStateWaitingCopyWithImpl<_$AuthStateWaiting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IAuthDataService auth, int hashTime) initial,
  }) {
    return initial(auth, hashTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth, int hashTime)? initial,
  }) {
    return initial?.call(auth, hashTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth, int hashTime)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(auth, hashTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateWaiting value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateWaiting value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateWaiting value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateWaiting implements AuthState {
  const factory AuthStateWaiting(
      {required final IAuthDataService auth,
      required final int hashTime}) = _$AuthStateWaiting;

  @override
  IAuthDataService get auth;
  @override
  int get hashTime;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateWaitingCopyWith<_$AuthStateWaiting> get copyWith =>
      throw _privateConstructorUsedError;
}
