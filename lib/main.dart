import 'package:flutter/material.dart';
import 'DateTimeCLass.dart';
import 'FoodApp/Home/HomeCategories.dart';
import 'Form/RegisterForm.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
      primaryColor: Colors.green,
    ),
    title: 'This is demo Flutter',
    home: Scaffold(
      appBar: AppBar(
        title:const Text('Categories \'s Food',
        style: TextStyle(fontFamily: 'Pacifico_Regular', fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: HomeCategories(),
      ),
    ),
  ));
}
