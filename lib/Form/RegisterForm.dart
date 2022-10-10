import 'package:flutter/material.dart';

import 'UserModel.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  late UserModel _model = UserModel(username: '', address: '');
  final List<UserModel> _lisUsers = <UserModel>[];

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  final _UserNameController = TextEditingController();
  final _AddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is register form',
      home: Scaffold(
        key: _scaffoldMessengerKey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 80, left: 10, bottom: 10, right: 10),
                  child: TextField(
                    controller: _UserNameController,
                    onChanged: (value) => setState(() {
                      _model.username = value;
                    }),
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  )
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
                  child: TextField(
                    controller: _AddressController,
                    onChanged: (value) => setState(() {
                      _model.address = value;
                    }),
                    decoration:const InputDecoration(
                      labelText: 'Address',
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromWidth(120)
                      ),
                      onPressed: () {
                        setState(() {
                          _lisUsers.add(_model);
                          _model = UserModel(username: '', address: '');
                          _UserNameController.text = '';
                          _AddressController.text = '';
                        });
                      },
                      child: const Text('Register'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        fixedSize: const Size.fromWidth(120)
                      ),
                      onPressed: () {

                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                ],
              ),
              Column(
                  children:
                  _lisUsers.map((eachUser){
                    return ListTile(
                      leading: const Icon(Icons.access_alarm),
                      title:  Text(eachUser.username),
                      subtitle: Text(eachUser.address),
                      onTap: () {
                        print('Tapped item ${eachUser.username}');
                      },
                    );
                  }).toList()
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getListUsers(List<UserModel> list){
    for(UserModel model in list){
      print(model.username);
    }

    return "";
}