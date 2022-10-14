import 'package:demo_app/FoodApp/Data/FakeDataCategories.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/FoodApp/Models/CategoriesModel.dart';

import '../LayoutItem/ItemFoods.dart';
import '../Models/FoodsModel.dart';

class HomeFood extends StatelessWidget {

  final CategoriesModel categoriesModel;


  HomeFood({required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    List<FoodsModel> listFoodsByCategory = getListFoodByCategory();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: categoriesModel.color,
        title: Text(
          categoriesModel.nameCategory,
          style: const TextStyle(fontFamily: 'Pacifico_Regular'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: categoriesModel.color.withOpacity(0.4),
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
            children: listFoodsByCategory.map((eachFood) =>
                ItemFoods(foodsModel: eachFood)).toList()
        ),
      ),
    );
  }

  List<FoodsModel> getListFoodByCategory() {
    return FAKE_LIST_FOOD.where((food) =>
    (food.idCategory == categoriesModel.id)).toList();
  }
}
