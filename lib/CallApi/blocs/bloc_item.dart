import 'package:demo_app/CallApi/events/item_events.dart';
import 'package:demo_app/CallApi/states/item_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/request_api.dart';

/// emit : emit event to BlocBuilder which will catch event to handle widget

class BlocItem extends Bloc<ItemEvents, ItemStates> {
  final RequestApi requestApi ;

  BlocItem({required this.requestApi}) : super (const LoadItemState()){
    // handle event loadItemEvent
    on<LoadItemEvent> (_onLoadItem);
    // on<LoadedItemEvent>(_onLoadedItem);
  }

  Future<void> _onLoadItem(LoadItemEvent event, Emitter<ItemStates> emit) async {
    // print('emit LoadItemState()');
    // emit(const LoadItemState());
    try{
      var listAcc = await requestApi.getData();
      emit(LoadedItemState(listAcc: listAcc));
      // print('emit LoadedItemState()');
    }catch(e){
      emit(LoadItemErrorState(error: e.toString()));
    }
  }

  // void _onLoadedItem(LoadedItemEvent event, Emitter<ItemStates> emit) {
  //   emit(const LoadedItemState());
  // }

}




