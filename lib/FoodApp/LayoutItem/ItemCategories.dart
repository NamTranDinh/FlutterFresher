import 'package:demo_app/FoodApp/Models/CategoriesModel.dart';
import 'package:flutter/material.dart';

class ItemCategories extends StatelessWidget {
  final CategoriesModel categoriesModel;

  ItemCategories({required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    Color colorBg = categoriesModel.color;
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 6.0),
        decoration: BoxDecoration(
          image: DecorationImage(
              opacity: 0.5,
              image: AssetImage(categoriesModel.img),
              fit: BoxFit.cover),
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
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Colors.white12,
                  )
                ],
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Pacifico_Regular',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
