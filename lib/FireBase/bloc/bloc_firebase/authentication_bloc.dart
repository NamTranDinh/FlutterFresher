import 'package:demo_app/FireBase/bloc/events/authentication_event.dart';
import 'package:demo_app/FireBase/bloc/states/authentication_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repositories/user_repos.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepos userRepos;

  AuthenticationBloc({required this.userRepos})
      : super(const AuthenticationInitialState()) {
    on<AuthenticationStartedEvent>(_authStartedEvent);
    on<AuthenticationSignedInEvent>(_authSignedInEvent);
    on<AuthenticationSignedOutEvent>(_authSignedOutEvent);
  }

  Future<void> _authStartedEvent(
      AuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    // final userCur = userRepos.getUserCurrentSigned();
    // if getUserCurrentSigned true => emit AuthenticationSuccessStatusState()
    emit(const AuthenticationSuccessStatusState());

    // else emit(AuthenticationFailedStatusState());
  }

  void _authSignedInEvent(
      AuthenticationEvent event, Emitter<AuthenticationState> emit) {
    emit(const AuthenticationSuccessStatusState());
  }

  void _authSignedOutEvent(
      AuthenticationEvent event, Emitter<AuthenticationState> emit) {
    userRepos.signOut();
    emit(const AuthenticationFailedStatusState());
  }
}
