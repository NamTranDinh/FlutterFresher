import 'package:demo_app/CallApi/models/account_model.dart';
import 'package:equatable/equatable.dart';

abstract class ItemStates extends Equatable {
  const ItemStates();
}

class LoadItemState extends ItemStates {
  const LoadItemState();

  @override
  List<Object?> get props => [];
}

class LoadedItemState extends ItemStates {
  final List<AccountModel> listAcc;

  const LoadedItemState({required this.listAcc});

  @override
  List<Object?> get props => [listAcc];
}

class LoadItemErrorState extends ItemStates {
  final String error;

  const LoadItemErrorState({required this.error});

  @override
  List<Object?> get props => throw UnimplementedError();
}
