import 'package:demo_app/CallApi/blocs/events/crud_events.dart';
import 'package:demo_app/CallApi/blocs/states/crud_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCrud extends Bloc<CrudEvents, CrudSates> {

  BlocCrud() : super(InitCrudState()) {
    on<OnCLickAddAccountEvent>(_onCLickAddAcc);
    on<OnCLickBackHomeEvent>(_onCLickBackHome);
  }

  void _onCLickAddAcc(OnCLickAddAccountEvent event, Emitter<CrudSates> emit) {
    emit(OnLickedAddAccStates());
  }

  void _onCLickBackHome(OnCLickBackHomeEvent event, Emitter<CrudSates> emit) {
    emit(OnLickAddAccStates());
  }

}

