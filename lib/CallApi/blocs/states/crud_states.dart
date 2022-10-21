import 'package:equatable/equatable.dart';

abstract class CrudSates extends Equatable {}

class InitCrudState extends CrudSates {
  InitCrudState();

  @override
  List<Object?> get props => [];
}

class OnLickAddAccStates extends CrudSates {
  OnLickAddAccStates();

  @override
  List<Object?> get props => [];
}

class OnLickedAddAccStates extends CrudSates {
  OnLickedAddAccStates();

  @override
  List<Object?> get props => [];
}

class OnLickBackHomeStates extends CrudSates {
  OnLickBackHomeStates();

  @override
  List<Object?> get props => [];
}

