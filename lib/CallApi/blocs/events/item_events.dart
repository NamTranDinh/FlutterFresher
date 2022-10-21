import 'package:equatable/equatable.dart';

abstract class ItemEvents extends Equatable {
  const ItemEvents();
}

class LoadItemEvent extends ItemEvents {
  @override
  List<Object?> get props => [];
}
class LoadedItemEvent extends ItemEvents {
  @override
  List<Object?> get props => [];
}
