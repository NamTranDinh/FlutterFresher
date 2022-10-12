import 'package:demo_app/FoodApp/Models/CategoriesModel.dart';
import 'package:flutter/material.dart';

class ItemCategories extends StatelessWidget {
  final CategoriesModel categoriesModel;

  ItemCategories({required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    Color colorBg = categoriesModel.color;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 2.0), //(x,y)
            blurRadius: 4.0,
          ),
        ],
        gradient: LinearGradient(colors: [
          colorBg.withOpacity(0.9),
          colorBg,
          colorBg.withOpacity(0.9)
        ], begin: Alignment.topLeft, end: Alignment.topRight),
        color: colorBg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            categoriesModel.nameCategory,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Montserrat_VariableFont_wght',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
