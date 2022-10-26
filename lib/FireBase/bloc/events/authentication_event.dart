import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {}

class AuthenticationStartedEvent extends AuthenticationEvent {
  AuthenticationStartedEvent();

  @override
  List<Object?> get props => [];
}

class AuthenticationSignedInEvent extends AuthenticationEvent {
  AuthenticationSignedInEvent();

  @override
  List<Object?> get props => [];
}

class AuthenticationSignedOutEvent extends AuthenticationEvent {
  AuthenticationSignedOutEvent();

  @override
  List<Object?> get props => [];
}
