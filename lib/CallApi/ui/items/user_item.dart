import 'dart:math';

import 'package:demo_app/CallApi/models/account_model.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final AccountModel modelAcc;

  const UserItem({required this.modelAcc});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: randomColor(0.6),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _imageUser(modelAcc.avatar),
          _fullNameUser(modelAcc.fullName),
        ],
      ),
    );
  }
}

Container _fullNameUser(String name) {
  return Container(
    margin: const EdgeInsets.only(top: 8, bottom: 3, right: 3, left: 3),
    child: Text(
      name,
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),
  );
}

Container _imageUser(String partAvatar) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white,
        width: 1.0,
      ),
    ),
    child: CircleAvatar(
      backgroundImage: NetworkImage(partAvatar),
      radius: 40,
    ),
  );
}

Color randomColor(double opacity) {
  Random random = Random();
  Color colorRan = Color.fromRGBO(
    random.nextInt(255),
    random.nextInt(255),
    random.nextInt(255),
    opacity,
  );
  return colorRan;
}
