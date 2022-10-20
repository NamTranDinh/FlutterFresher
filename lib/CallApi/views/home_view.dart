import 'package:demo_app/CallApi/blocs/bloc_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/account_model.dart';
import '../states/item_states.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // List<AccountModel> list = [];

  @override
  Widget build(BuildContext context) {
    // List<AccountModel> listAccount = [];
    // getdata() async {
    //   var response = await http.get(
    //       Uri.parse('http://10.30.1.174/api_user/db/getAllAccounts.php'));
    //   if (response.statusCode == 200) {
    //     // convert listData to List of AccountModel
    //     var jsonData = json.decode(response.body);
    //
    //     for (var accModel in jsonData) {
    //       AccountModel accs = AccountModel(
    //         userName: accModel['user_name'],
    //         password: accModel['password'],
    //         fullName: accModel['full_name'],
    //         avatar: accModel['avatar'],
    //         type: accModel['type'],
    //         status: accModel['status'],
    //       );
    //       listAccount.add(accs);
    //     }
    //     //
    //   }
    //   print('${listAccount.elementAt(1).fullName} ${response.body}');
    //   return listAccount;
    // }

    return BlocBuilder<BlocItem, ItemStates>(
        builder: (context, state) {
          // return widget here based on BlocA's state
          if(state is LoadItemState){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(state is LoadedItemState){
            List<AccountModel> listAcc = state.listAcc;
            return GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                childAspectRatio: 3 / 2,
                maxCrossAxisExtent: 200,
              ),
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: listAcc.map((e) => Card(child: Text(e.fullName),)).toList(),
            );
          }
          if(state is LoadItemErrorState){
            return const Center(
              child: Text('404 not found'),
            );
          }

          return Container();
        }
    );
  }
}
