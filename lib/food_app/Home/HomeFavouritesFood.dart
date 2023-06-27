import 'package:demo_app/food_app/Data/FakeDataCategories.dart';
import 'package:demo_app/food_app/LayoutItem/ItemFoods.dart';
import 'package:demo_app/food_app/Models/FavouritesFoodModel.dart';
import 'package:flutter/material.dart';

class HomeFavouritesFood extends StatelessWidget {

  late List<FavouritesFoodModel> listFoodFavor = FAKE_FAVOURITE_FOODS;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
      child: Stack(
        children: [
          Center(child: Visibility( visible: (listFoodFavor.isEmpty)? true : false,child: const Image(image: AssetImage('assets/images/img_placeholder_nothing.png')),)),
          ListView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            children: listFoodFavor.map((eachItem) => ItemFoods(foodsModel: eachItem.foodsModel)).toList(),
          ),
        ],
      ),
    );
  }
}
