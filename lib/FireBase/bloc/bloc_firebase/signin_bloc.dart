import 'package:demo_app/FireBase/bloc/events/signin_event.dart';
import 'package:demo_app/FireBase/bloc/states/signin_state.dart';
import 'package:demo_app/FireBase/repositories/user_repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent,SignInStates>{
  final UserRepos userRepos ;
  SignInBloc({required this.userRepos}) : super(SignInStates.initial()){
    on<OnEmailSignInChangedEvent>(_onEmailChange);
    on<OnPasswordSignInChangedEvent>(_onPasswordChange);
    on<OnPressSignInWithEmailAndPassword>(_onPressSignIn);
    on<OnEmailSignInChangedEvent>(_onEmailChange);
  }

  void _onEmailChange(SignInEvent event, Emitter<SignInStates> emit){
    final signInState = state;
    // emit(signInState.clon);
  }

  void _onPasswordChange(SignInEvent event, Emitter<SignInStates> emit){

  }

  void _onPressSignIn(SignInEvent event, Emitter<SignInStates> emit){

  }
}


