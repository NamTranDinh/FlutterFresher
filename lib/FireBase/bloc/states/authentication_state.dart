import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationState extends Equatable{
  const AuthenticationState();
}

class AuthenticationInitialState extends AuthenticationState {
  const AuthenticationInitialState();

  @override
  List<Object?> get props => [];
}

class AuthenticationSuccessStatusState extends AuthenticationState {
  // final User user;

  const AuthenticationSuccessStatusState();

  @override
  List<Object?> get props => [];

  @override
  String toString() => 'AuthenticationSuccessStatusState - Email : ';
}

class AuthenticationFailedStatusState extends AuthenticationState {
  // final Exception e;

  const AuthenticationFailedStatusState();

  @override
  List<Object?> get props => [];
}
