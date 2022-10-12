import 'package:flutter/material.dart';
import 'DateTimeCLass.dart';
import 'Form/RegisterForm.dart';
import 'TextField.dart';

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        title: 'This is demo Flutter',
        home: RegisterForm(),
      )
  );
}

