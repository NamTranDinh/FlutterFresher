import 'package:flutter/material.dart';
import 'UserModel.dart';

class ListUserWidget extends StatelessWidget {
  final List<UserModel> lisUser;

  const ListUserWidget({super.key, required this.lisUser});

  ListView _listWidgetUser() {
    return ListView.builder(
        itemCount: lisUser.length,
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: (index % 2 == 0)
                ? Colors.green[300]
                : Theme.of(context).primaryColor,
            elevation: 10,
            child: ListTile(
              leading: const Icon(Icons.ac_unit, color: Colors.white),
              title: Text(
                lisUser[index].username,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              subtitle: Text(
                lisUser[index].address,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              onTap: () {
                print('Tapped item ${lisUser[index].username}');
              },
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 600, child: _listWidgetUser());
  }
}
