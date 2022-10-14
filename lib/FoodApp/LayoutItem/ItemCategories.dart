import 'package:demo_app/FoodApp/Home/HomeFood.dart';
import 'package:demo_app/FoodApp/Models/CategoriesModel.dart';
import 'package:flutter/material.dart';

class ItemCategories extends StatelessWidget {
  final BuildContext context;
  final CategoriesModel categoriesModel;

  ItemCategories({required this.categoriesModel, required this.context});

  @override
  Widget build(BuildContext context) {
    Color colorBg = categoriesModel.color;
    return InkWell(
      onTap: () {
        pushToRoute(HomeFood(categoriesModel: categoriesModel,));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 6.0),
        decoration: BoxDecoration(
          image: DecorationImage(
              opacity: 0.8,
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
                    offset: Offset(2.0, 2.0),
                    blurRadius: 6.0,
                    color: Colors.black,
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
  void pushToRoute(Widget widget){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return widget;
    }));
  }
}
