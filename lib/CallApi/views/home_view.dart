import 'package:flutter/material.dart';
import '../models/account_model.dart';
import '../services/request_api.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<AccountModel> list = [];

  @override
  void initState() {
    super.initState();
    RequestApi.getData(page: 1).then((value) => list = value);
  }

  @override
  Widget build(BuildContext context) {
    // List<AccountModel> listAccount = [];
    // getdata() async {
    //
    //   var response = await http.get(
    //       Uri.parse('http://192.168.21.104/api_user/db/getAllAccounts.php'));
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
    //   print('${listAccount.elementAt(0).fullName} ${response.body}');
    //   return listAccount;
    // }

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
      children: [
        Container(
          child: Center(
            child: ElevatedButton(
              child: const Text('Click me'),
              onPressed: () {
                print('${list.elementAt(1).fullName}');
              },
            ),
          ),
        )
      ],
    );
  }
}
