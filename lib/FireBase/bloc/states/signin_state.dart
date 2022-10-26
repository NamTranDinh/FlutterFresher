import 'package:flutter/cupertino.dart';

@immutable
class SignInStates {
  final bool isValidEmail;
  final bool isValidPassword;
  final bool isSubmit;
  final bool isSuccess;
  final bool isFailure;

  const SignInStates(
      {required this.isValidEmail,
      required this.isValidPassword,
      required this.isSubmit,
      required this.isSuccess,
      required this.isFailure});

  factory SignInStates.initial() {
    return const SignInStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: false,
        isSuccess: false,
        isFailure: false);
  }

  factory SignInStates.loading() {
    return const SignInStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: true,
        isSuccess: false,
        isFailure: false);
  }

  factory SignInStates.failure() {
    return const SignInStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: false,
        isSuccess: false,
        isFailure: true);
  }

  factory SignInStates.success() {
    return const SignInStates(
        isValidEmail: true,
        isValidPassword: true,
        isSubmit: false,
        isSuccess: true,
        isFailure: false);
  }

  SignInStates cloneWith(
      {required bool isValidEmail,
      required bool isValidPassword,
      required bool isSubmit,
      required bool isSuccess,
      required bool isFailure}) {
    return SignInStates(
        isValidEmail: isValidEmail = this.isValidEmail,
        isValidPassword: isValidPassword = this.isValidPassword,
        isSubmit: isSubmit = this.isSubmit,
        isSuccess: isSuccess = this.isSuccess,
        isFailure: isFailure = this.isFailure);
  }
}
