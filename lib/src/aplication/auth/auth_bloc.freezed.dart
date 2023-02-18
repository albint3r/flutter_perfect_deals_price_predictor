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
    required TResult Function() userIsNotLogIn,
    required TResult Function() validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userIsNotLogIn,
    TResult? Function()? validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsNotLogIn,
    TResult Function()? validateUserCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) initial,
    required TResult Function(AuthEventuserIsNotLogIn value) userIsNotLogIn,
    required TResult Function(AuthEventValidateUserCredentials value)
        validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult? Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
    TResult Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
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
    required TResult Function() userIsNotLogIn,
    required TResult Function() validateUserCredentials,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userIsNotLogIn,
    TResult? Function()? validateUserCredentials,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsNotLogIn,
    TResult Function()? validateUserCredentials,
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
    required TResult Function(AuthEventuserIsNotLogIn value) userIsNotLogIn,
    required TResult Function(AuthEventValidateUserCredentials value)
        validateUserCredentials,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult? Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
    TResult Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
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
abstract class _$$AuthEventuserIsNotLogInCopyWith<$Res> {
  factory _$$AuthEventuserIsNotLogInCopyWith(_$AuthEventuserIsNotLogIn value,
          $Res Function(_$AuthEventuserIsNotLogIn) then) =
      __$$AuthEventuserIsNotLogInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventuserIsNotLogInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventuserIsNotLogIn>
    implements _$$AuthEventuserIsNotLogInCopyWith<$Res> {
  __$$AuthEventuserIsNotLogInCopyWithImpl(_$AuthEventuserIsNotLogIn _value,
      $Res Function(_$AuthEventuserIsNotLogIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventuserIsNotLogIn implements AuthEventuserIsNotLogIn {
  const _$AuthEventuserIsNotLogIn();

  @override
  String toString() {
    return 'AuthEvent.userIsNotLogIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventuserIsNotLogIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userIsNotLogIn,
    required TResult Function() validateUserCredentials,
  }) {
    return userIsNotLogIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userIsNotLogIn,
    TResult? Function()? validateUserCredentials,
  }) {
    return userIsNotLogIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsNotLogIn,
    TResult Function()? validateUserCredentials,
    required TResult orElse(),
  }) {
    if (userIsNotLogIn != null) {
      return userIsNotLogIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) initial,
    required TResult Function(AuthEventuserIsNotLogIn value) userIsNotLogIn,
    required TResult Function(AuthEventValidateUserCredentials value)
        validateUserCredentials,
  }) {
    return userIsNotLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult? Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
  }) {
    return userIsNotLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
    TResult Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
    required TResult orElse(),
  }) {
    if (userIsNotLogIn != null) {
      return userIsNotLogIn(this);
    }
    return orElse();
  }
}

abstract class AuthEventuserIsNotLogIn implements AuthEvent {
  const factory AuthEventuserIsNotLogIn() = _$AuthEventuserIsNotLogIn;
}

/// @nodoc
abstract class _$$AuthEventValidateUserCredentialsCopyWith<$Res> {
  factory _$$AuthEventValidateUserCredentialsCopyWith(
          _$AuthEventValidateUserCredentials value,
          $Res Function(_$AuthEventValidateUserCredentials) then) =
      __$$AuthEventValidateUserCredentialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventValidateUserCredentialsCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventValidateUserCredentials>
    implements _$$AuthEventValidateUserCredentialsCopyWith<$Res> {
  __$$AuthEventValidateUserCredentialsCopyWithImpl(
      _$AuthEventValidateUserCredentials _value,
      $Res Function(_$AuthEventValidateUserCredentials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventValidateUserCredentials
    implements AuthEventValidateUserCredentials {
  const _$AuthEventValidateUserCredentials();

  @override
  String toString() {
    return 'AuthEvent.validateUserCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventValidateUserCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userIsNotLogIn,
    required TResult Function() validateUserCredentials,
  }) {
    return validateUserCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userIsNotLogIn,
    TResult? Function()? validateUserCredentials,
  }) {
    return validateUserCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userIsNotLogIn,
    TResult Function()? validateUserCredentials,
    required TResult orElse(),
  }) {
    if (validateUserCredentials != null) {
      return validateUserCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) initial,
    required TResult Function(AuthEventuserIsNotLogIn value) userIsNotLogIn,
    required TResult Function(AuthEventValidateUserCredentials value)
        validateUserCredentials,
  }) {
    return validateUserCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult? Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
  }) {
    return validateUserCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
    TResult Function(AuthEventuserIsNotLogIn value)? userIsNotLogIn,
    TResult Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
    required TResult orElse(),
  }) {
    if (validateUserCredentials != null) {
      return validateUserCredentials(this);
    }
    return orElse();
  }
}

abstract class AuthEventValidateUserCredentials implements AuthEvent {
  const factory AuthEventValidateUserCredentials() =
      _$AuthEventValidateUserCredentials;
}

/// @nodoc
mixin _$AuthState {
  IAuthDataService get auth => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IAuthDataService auth) waiting,
    required TResult Function(IAuthDataService auth) userAuthenticated,
    required TResult Function(IAuthDataService auth) userNotAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth)? waiting,
    TResult? Function(IAuthDataService auth)? userAuthenticated,
    TResult? Function(IAuthDataService auth)? userNotAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth)? waiting,
    TResult Function(IAuthDataService auth)? userAuthenticated,
    TResult Function(IAuthDataService auth)? userNotAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateWaiting value) waiting,
    required TResult Function(AuthStateUserAuthenticated value)
        userAuthenticated,
    required TResult Function(AuthStateUserNotAuthenticated value)
        userNotAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateWaiting value)? waiting,
    TResult? Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult? Function(AuthStateUserNotAuthenticated value)?
        userNotAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateWaiting value)? waiting,
    TResult Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult Function(AuthStateUserNotAuthenticated value)? userNotAuthenticated,
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
  $Res call({IAuthDataService auth});
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
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as IAuthDataService,
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
  $Res call({IAuthDataService auth});
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
  }) {
    return _then(_$AuthStateWaiting(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as IAuthDataService,
    ));
  }
}

/// @nodoc

class _$AuthStateWaiting implements AuthStateWaiting {
  const _$AuthStateWaiting({required this.auth});

  @override
  final IAuthDataService auth;

  @override
  String toString() {
    return 'AuthState.waiting(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateWaiting &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateWaitingCopyWith<_$AuthStateWaiting> get copyWith =>
      __$$AuthStateWaitingCopyWithImpl<_$AuthStateWaiting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IAuthDataService auth) waiting,
    required TResult Function(IAuthDataService auth) userAuthenticated,
    required TResult Function(IAuthDataService auth) userNotAuthenticated,
  }) {
    return waiting(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth)? waiting,
    TResult? Function(IAuthDataService auth)? userAuthenticated,
    TResult? Function(IAuthDataService auth)? userNotAuthenticated,
  }) {
    return waiting?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth)? waiting,
    TResult Function(IAuthDataService auth)? userAuthenticated,
    TResult Function(IAuthDataService auth)? userNotAuthenticated,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateWaiting value) waiting,
    required TResult Function(AuthStateUserAuthenticated value)
        userAuthenticated,
    required TResult Function(AuthStateUserNotAuthenticated value)
        userNotAuthenticated,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateWaiting value)? waiting,
    TResult? Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult? Function(AuthStateUserNotAuthenticated value)?
        userNotAuthenticated,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateWaiting value)? waiting,
    TResult Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult Function(AuthStateUserNotAuthenticated value)? userNotAuthenticated,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class AuthStateWaiting implements AuthState {
  const factory AuthStateWaiting({required final IAuthDataService auth}) =
      _$AuthStateWaiting;

  @override
  IAuthDataService get auth;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateWaitingCopyWith<_$AuthStateWaiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateUserAuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateUserAuthenticatedCopyWith(
          _$AuthStateUserAuthenticated value,
          $Res Function(_$AuthStateUserAuthenticated) then) =
      __$$AuthStateUserAuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IAuthDataService auth});
}

/// @nodoc
class __$$AuthStateUserAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUserAuthenticated>
    implements _$$AuthStateUserAuthenticatedCopyWith<$Res> {
  __$$AuthStateUserAuthenticatedCopyWithImpl(
      _$AuthStateUserAuthenticated _value,
      $Res Function(_$AuthStateUserAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
  }) {
    return _then(_$AuthStateUserAuthenticated(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as IAuthDataService,
    ));
  }
}

/// @nodoc

class _$AuthStateUserAuthenticated implements AuthStateUserAuthenticated {
  const _$AuthStateUserAuthenticated({required this.auth});

  @override
  final IAuthDataService auth;

  @override
  String toString() {
    return 'AuthState.userAuthenticated(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUserAuthenticated &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateUserAuthenticatedCopyWith<_$AuthStateUserAuthenticated>
      get copyWith => __$$AuthStateUserAuthenticatedCopyWithImpl<
          _$AuthStateUserAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IAuthDataService auth) waiting,
    required TResult Function(IAuthDataService auth) userAuthenticated,
    required TResult Function(IAuthDataService auth) userNotAuthenticated,
  }) {
    return userAuthenticated(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth)? waiting,
    TResult? Function(IAuthDataService auth)? userAuthenticated,
    TResult? Function(IAuthDataService auth)? userNotAuthenticated,
  }) {
    return userAuthenticated?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth)? waiting,
    TResult Function(IAuthDataService auth)? userAuthenticated,
    TResult Function(IAuthDataService auth)? userNotAuthenticated,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateWaiting value) waiting,
    required TResult Function(AuthStateUserAuthenticated value)
        userAuthenticated,
    required TResult Function(AuthStateUserNotAuthenticated value)
        userNotAuthenticated,
  }) {
    return userAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateWaiting value)? waiting,
    TResult? Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult? Function(AuthStateUserNotAuthenticated value)?
        userNotAuthenticated,
  }) {
    return userAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateWaiting value)? waiting,
    TResult Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult Function(AuthStateUserNotAuthenticated value)? userNotAuthenticated,
    required TResult orElse(),
  }) {
    if (userAuthenticated != null) {
      return userAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateUserAuthenticated implements AuthState {
  const factory AuthStateUserAuthenticated(
      {required final IAuthDataService auth}) = _$AuthStateUserAuthenticated;

  @override
  IAuthDataService get auth;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateUserAuthenticatedCopyWith<_$AuthStateUserAuthenticated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateUserNotAuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateUserNotAuthenticatedCopyWith(
          _$AuthStateUserNotAuthenticated value,
          $Res Function(_$AuthStateUserNotAuthenticated) then) =
      __$$AuthStateUserNotAuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IAuthDataService auth});
}

/// @nodoc
class __$$AuthStateUserNotAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUserNotAuthenticated>
    implements _$$AuthStateUserNotAuthenticatedCopyWith<$Res> {
  __$$AuthStateUserNotAuthenticatedCopyWithImpl(
      _$AuthStateUserNotAuthenticated _value,
      $Res Function(_$AuthStateUserNotAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
  }) {
    return _then(_$AuthStateUserNotAuthenticated(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as IAuthDataService,
    ));
  }
}

/// @nodoc

class _$AuthStateUserNotAuthenticated implements AuthStateUserNotAuthenticated {
  const _$AuthStateUserNotAuthenticated({required this.auth});

  @override
  final IAuthDataService auth;

  @override
  String toString() {
    return 'AuthState.userNotAuthenticated(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUserNotAuthenticated &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateUserNotAuthenticatedCopyWith<_$AuthStateUserNotAuthenticated>
      get copyWith => __$$AuthStateUserNotAuthenticatedCopyWithImpl<
          _$AuthStateUserNotAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IAuthDataService auth) waiting,
    required TResult Function(IAuthDataService auth) userAuthenticated,
    required TResult Function(IAuthDataService auth) userNotAuthenticated,
  }) {
    return userNotAuthenticated(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth)? waiting,
    TResult? Function(IAuthDataService auth)? userAuthenticated,
    TResult? Function(IAuthDataService auth)? userNotAuthenticated,
  }) {
    return userNotAuthenticated?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth)? waiting,
    TResult Function(IAuthDataService auth)? userAuthenticated,
    TResult Function(IAuthDataService auth)? userNotAuthenticated,
    required TResult orElse(),
  }) {
    if (userNotAuthenticated != null) {
      return userNotAuthenticated(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateWaiting value) waiting,
    required TResult Function(AuthStateUserAuthenticated value)
        userAuthenticated,
    required TResult Function(AuthStateUserNotAuthenticated value)
        userNotAuthenticated,
  }) {
    return userNotAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateWaiting value)? waiting,
    TResult? Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult? Function(AuthStateUserNotAuthenticated value)?
        userNotAuthenticated,
  }) {
    return userNotAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateWaiting value)? waiting,
    TResult Function(AuthStateUserAuthenticated value)? userAuthenticated,
    TResult Function(AuthStateUserNotAuthenticated value)? userNotAuthenticated,
    required TResult orElse(),
  }) {
    if (userNotAuthenticated != null) {
      return userNotAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthStateUserNotAuthenticated implements AuthState {
  const factory AuthStateUserNotAuthenticated(
      {required final IAuthDataService auth}) = _$AuthStateUserNotAuthenticated;

  @override
  IAuthDataService get auth;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateUserNotAuthenticatedCopyWith<_$AuthStateUserNotAuthenticated>
      get copyWith => throw _privateConstructorUsedError;
}
