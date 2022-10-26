import 'package:equatable/equatable.dart';

abstract class SignInEvent extends Equatable {
  const SignInEvent();
}

class OnEmailSignInChangedEvent extends SignInEvent {
  final String emailChange;

  const OnEmailSignInChangedEvent({required this.emailChange});

  @override
  List<Object?> get props => [emailChange];

  @override
  String toString() => 'OnEmailSignInChangedEvent - Email : $emailChange';
}

class OnPasswordSignInChangedEvent extends SignInEvent {
  final String passwordChange;

  const OnPasswordSignInChangedEvent({required this.passwordChange});

  @override
  List<Object?> get props => [passwordChange];

  @override
  String toString() => 'OnPasswordSignInChangedEvent - Password : $passwordChange';
}

class OnPressSignInWithEmailAndPassword extends SignInEvent{
  final String email;
  final String password;

  const OnPressSignInWithEmailAndPassword({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() => 'OnPressSignInWithEmailAndPassword :: Email: $email + Password : $password';

}
