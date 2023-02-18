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
    required TResult Function() validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? validateUserCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthEventInitial value) initial,
    required TResult Function(AuthEventValidateUserCredentials value)
        validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
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
    required TResult Function() validateUserCredentials,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? validateUserCredentials,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(AuthEventValidateUserCredentials value)
        validateUserCredentials,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
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
    required TResult Function() validateUserCredentials,
  }) {
    return validateUserCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? validateUserCredentials,
  }) {
    return validateUserCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(AuthEventValidateUserCredentials value)
        validateUserCredentials,
  }) {
    return validateUserCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthEventInitial value)? initial,
    TResult? Function(AuthEventValidateUserCredentials value)?
        validateUserCredentials,
  }) {
    return validateUserCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthEventInitial value)? initial,
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
    required TResult Function(IAuthDataService auth) started,
    required TResult Function(IAuthDataService auth) userAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth)? started,
    TResult? Function(IAuthDataService auth)? userAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth)? started,
    TResult Function(IAuthDataService auth)? userAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateStarted value) started,
    required TResult Function(AuthStateUserAuthenticated value)
        userAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateStarted value)? started,
    TResult? Function(AuthStateUserAuthenticated value)? userAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateStarted value)? started,
    TResult Function(AuthStateUserAuthenticated value)? userAuthenticated,
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
abstract class _$$AuthStateStartedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateStartedCopyWith(
          _$AuthStateStarted value, $Res Function(_$AuthStateStarted) then) =
      __$$AuthStateStartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IAuthDataService auth});
}

/// @nodoc
class __$$AuthStateStartedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateStarted>
    implements _$$AuthStateStartedCopyWith<$Res> {
  __$$AuthStateStartedCopyWithImpl(
      _$AuthStateStarted _value, $Res Function(_$AuthStateStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
  }) {
    return _then(_$AuthStateStarted(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as IAuthDataService,
    ));
  }
}

/// @nodoc

class _$AuthStateStarted implements AuthStateStarted {
  const _$AuthStateStarted({required this.auth});

  @override
  final IAuthDataService auth;

  @override
  String toString() {
    return 'AuthState.started(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateStarted &&
            (identical(other.auth, auth) || other.auth == auth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateStartedCopyWith<_$AuthStateStarted> get copyWith =>
      __$$AuthStateStartedCopyWithImpl<_$AuthStateStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IAuthDataService auth) started,
    required TResult Function(IAuthDataService auth) userAuthenticated,
  }) {
    return started(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth)? started,
    TResult? Function(IAuthDataService auth)? userAuthenticated,
  }) {
    return started?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth)? started,
    TResult Function(IAuthDataService auth)? userAuthenticated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(auth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateStarted value) started,
    required TResult Function(AuthStateUserAuthenticated value)
        userAuthenticated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateStarted value)? started,
    TResult? Function(AuthStateUserAuthenticated value)? userAuthenticated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateStarted value)? started,
    TResult Function(AuthStateUserAuthenticated value)? userAuthenticated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class AuthStateStarted implements AuthState {
  const factory AuthStateStarted({required final IAuthDataService auth}) =
      _$AuthStateStarted;

  @override
  IAuthDataService get auth;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateStartedCopyWith<_$AuthStateStarted> get copyWith =>
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
    required TResult Function(IAuthDataService auth) started,
    required TResult Function(IAuthDataService auth) userAuthenticated,
  }) {
    return userAuthenticated(auth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IAuthDataService auth)? started,
    TResult? Function(IAuthDataService auth)? userAuthenticated,
  }) {
    return userAuthenticated?.call(auth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IAuthDataService auth)? started,
    TResult Function(IAuthDataService auth)? userAuthenticated,
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
    required TResult Function(AuthStateStarted value) started,
    required TResult Function(AuthStateUserAuthenticated value)
        userAuthenticated,
  }) {
    return userAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateStarted value)? started,
    TResult? Function(AuthStateUserAuthenticated value)? userAuthenticated,
  }) {
    return userAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateStarted value)? started,
    TResult Function(AuthStateUserAuthenticated value)? userAuthenticated,
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
