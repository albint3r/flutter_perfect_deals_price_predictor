import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:form_validator/form_validator.dart';

part 'email_field_validator.freezed.dart';

@freezed
class EmailFieldValidator with _$EmailFieldValidator {
  const EmailFieldValidator._();

  const factory EmailFieldValidator(String email) = _EmailFieldValidator;

  String? isEmailValid() {
    final isValid = ValidationBuilder().email().build();
    return isValid(email);
  }
}
