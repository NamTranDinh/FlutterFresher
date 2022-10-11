import 'package:demo_app/Form/ListUserWidget.dart';
import 'package:flutter/material.dart';
import 'UserModel.dart';
import 'package:toast/toast.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isValid = false;

  late UserModel _model = UserModel(username: '', address: '');
  final List<UserModel> _lisUsers = <UserModel>[];

  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  final _UserNameController = TextEditingController();
  final _AddressController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return MaterialApp(
      title: 'This is register form',
      home: Scaffold(
        key: _scaffoldMessengerKey,
        body: SafeArea(
          minimum: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        top: 80, left: 0, bottom: 10, right: 00),
                    child: TextField(
                      controller: _UserNameController,
                      onChanged: (value) => setState(() {
                        _model.username = value;
                      }),
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.only(
                        top: 10, left: 0, bottom: 10, right: 0),
                    child: TextField(
                      controller: _AddressController,
                      onChanged: (value) => setState(() {
                        _model.address = value;
                      }),
                      decoration: const InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromWidth(120)),
                        onPressed: () {

                          (_UserNameController.text == '' && _AddressController.text == '')
                              ? isValid = false
                              : isValid = true;
                          setState(() {
                            if (isValid) {
                              _lisUsers.add(_model);
                              _model = UserModel(username: '', address: '');
                              _UserNameController.text = '';
                              _AddressController.text = '';
                            } else {
                                  () => showToast("Username or address not blank!!",
                                  duration: Toast.lengthLong,
                                  gravity: Toast.bottom);
                            }
                          });
                          print('$isValid + ${_model.username} + ${_model.address}');
                        },
                        child: const Text('Register'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            fixedSize: const Size.fromWidth(120)),
                        onPressed: () {},
                        child: const Text('Cancel'),
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(
                        top: 30, left: 0, right: 0, bottom: 0),
                    child: ListUserWidget(lisUser: _lisUsers) ),
              ],
            ),
          )
        ),
      ),
    );
  }

  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg, duration: duration, gravity: gravity);
  }
}

String getListUsers(List<UserModel> list) {
  for (UserModel model in list) {
    print(model.username);
  }

  return "";
}
