import 'package:flutter/cupertino.dart';

@immutable
class SignUpStates {
  final bool isValidEmail;
  final bool isValidPassword;
  final bool isSubmit;
  final bool isSuccess;
  final bool isFailure;

  const SignUpStates(
      {required this.isValidEmail,
        required this.isValidPassword,
        required this.isSubmit,
        required this.isSuccess,
        required this.isFailure});

  factory SignUpStates.initial() {
    return const SignUpStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: false,
        isSuccess: false,
        isFailure: false);
  }

  factory SignUpStates.loading() {
    return const SignUpStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: true,
        isSuccess: false,
        isFailure: false);
  }

  factory SignUpStates.failure() {
    return const SignUpStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: false,
        isSuccess: false,
        isFailure: true);
  }

  factory SignUpStates.success() {
    return const SignUpStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: false,
        isSuccess: true,
        isFailure: false);
  }

  SignUpStates cloneWith(
      {required bool isValidEmail,
        required bool isValidPassword,
        required bool isSubmit,
        required bool isSuccess,
        required bool isFailure}) {
    return SignUpStates(
        isValidEmail: isValidEmail = this.isValidEmail,
        isValidPassword: isValidPassword = this.isValidPassword,
        isSubmit: isSubmit = this.isSubmit,
        isSuccess: isSuccess = this.isSuccess,
        isFailure: isFailure = this.isFailure);
  }
}
