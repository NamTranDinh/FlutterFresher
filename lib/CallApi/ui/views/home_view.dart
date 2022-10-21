import 'package:demo_app/CallApi/blocs/bloc_item.dart';
import 'package:demo_app/CallApi/ui/items/user_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/states/item_states.dart';
import '../../models/account_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocItem, ItemStates>(builder: (context, state) {
      // return widget here based on BlocA's state
      if (state is LoadItemState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is LoadedItemState) {
        List<AccountModel> listAcc = state.listAcc;
        return Padding(
          padding: const EdgeInsets.all(4),
          child: _loadAccounts(listAcc),
        );
      }
      if (state is LoadItemErrorState) {
        return const Center(
          child: Text('404 not found'),
        );
      }

      return Container();
    });
  }
}


GridView _loadAccounts(List<AccountModel> listAcc){
  return GridView(
    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      mainAxisSpacing: 4,
      crossAxisSpacing: 3,
      childAspectRatio: 3/4,
      maxCrossAxisExtent: 120,
    ),
    physics: const BouncingScrollPhysics(
      parent: AlwaysScrollableScrollPhysics(),
    ),
    children: listAcc.map(
            (e) => UserItem(modelAcc: e))
        .toList(),
  );
}
