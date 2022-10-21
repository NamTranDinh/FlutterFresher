import 'package:equatable/equatable.dart';

abstract class CrudEvents extends Equatable {}

class OnCLickAddAccountEvent extends CrudEvents {
  OnCLickAddAccountEvent();

  @override
  List<Object?> get props => [];
}

class OnCLickBackHomeEvent extends CrudEvents {
  OnCLickBackHomeEvent();

  @override
  List<Object?> get props => [];
}
