import 'package:equatable/equatable.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();
}

class OnEmailSignUpChangedEvent extends SignUpEvent {
  final String emailChange;

  const OnEmailSignUpChangedEvent({required this.emailChange});

  @override
  List<Object?> get props => [emailChange];

  @override
  String toString() => 'OnEmailSignUpChangedEvent - Email : $emailChange';
}

class OnPasswordSignUpChangedEvent extends SignUpEvent {
  final String passwordChange;

  const OnPasswordSignUpChangedEvent({required this.passwordChange});

  @override
  List<Object?> get props => [passwordChange];

  @override
  String toString() => 'OnPasswordSignUpChangedEvent - Password : $passwordChange';
}

class OnPressSignUpWithEmailAndPassword extends SignUpEvent{
  final String email;
  final String password;

  const OnPressSignUpWithEmailAndPassword({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() => 'OnPressSignUpWithEmailAndPassword :: Email: $email + Password : $password';

}
