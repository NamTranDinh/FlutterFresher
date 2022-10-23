import 'package:flutter/material.dart';

class TextFieldUtils extends StatefulWidget {
  String name;
  int age;

  TextFieldUtils(this.name, this.age);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<TextFieldUtils> {
  late String _userName = '';

  final userEditing = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'This is title app',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: TextField(
                    // controller: userEditing,
                    onChanged: (text) {
                      setState(() {
                        _userName = text;
                      });
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      labelText: 'Username',
                    )),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      labelText: 'Password',
                    )),
              ),
              const Text(
                'RESULT BELOW',
                style: TextStyle(fontSize: 20, color: Colors.green),
              ),
              Text(
                _userName,
                style: const TextStyle(fontSize: 16, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
