// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_field_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailFieldValidator {
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailFieldValidatorCopyWith<EmailFieldValidator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailFieldValidatorCopyWith<$Res> {
  factory $EmailFieldValidatorCopyWith(
          EmailFieldValidator value, $Res Function(EmailFieldValidator) then) =
      _$EmailFieldValidatorCopyWithImpl<$Res, EmailFieldValidator>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailFieldValidatorCopyWithImpl<$Res, $Val extends EmailFieldValidator>
    implements $EmailFieldValidatorCopyWith<$Res> {
  _$EmailFieldValidatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailFieldValidatorCopyWith<$Res>
    implements $EmailFieldValidatorCopyWith<$Res> {
  factory _$$_EmailFieldValidatorCopyWith(_$_EmailFieldValidator value,
          $Res Function(_$_EmailFieldValidator) then) =
      __$$_EmailFieldValidatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailFieldValidatorCopyWithImpl<$Res>
    extends _$EmailFieldValidatorCopyWithImpl<$Res, _$_EmailFieldValidator>
    implements _$$_EmailFieldValidatorCopyWith<$Res> {
  __$$_EmailFieldValidatorCopyWithImpl(_$_EmailFieldValidator _value,
      $Res Function(_$_EmailFieldValidator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailFieldValidator(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailFieldValidator extends _EmailFieldValidator {
  const _$_EmailFieldValidator(this.email) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'EmailFieldValidator(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailFieldValidator &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailFieldValidatorCopyWith<_$_EmailFieldValidator> get copyWith =>
      __$$_EmailFieldValidatorCopyWithImpl<_$_EmailFieldValidator>(
          this, _$identity);
}

abstract class _EmailFieldValidator extends EmailFieldValidator {
  const factory _EmailFieldValidator(final String email) =
      _$_EmailFieldValidator;
  const _EmailFieldValidator._() : super._();

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_EmailFieldValidatorCopyWith<_$_EmailFieldValidator> get copyWith =>
      throw _privateConstructorUsedError;
}
