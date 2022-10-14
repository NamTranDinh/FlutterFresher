import 'package:demo_app/FoodApp/Models/CategoriesModel.dart';
import 'package:demo_app/FoodApp/Models/FavouritesFoodModel.dart';
import 'package:flutter/material.dart';

import '../Models/FoodsModel.dart';

List<CategoriesModel> FAKE_DATA_CATEGORIES = [
  CategoriesModel(id: 1, nameCategory: 'Vegetables', color: Colors.deepPurpleAccent, img: 'assets/images/vegetable.png'),
  CategoriesModel(id: 2, nameCategory: 'Fruits', color: Colors.teal, img: 'assets/images/vegetable.png'),
  CategoriesModel(id: 3, nameCategory: 'Beans & Nuts', color: Colors.green, img: 'assets/images/beans_and_nuts.jpg'),
  CategoriesModel(id: 4, nameCategory: 'Poultry', color: Colors.red, img: 'assets/images/drink.jpg'),
  CategoriesModel(id: 5, nameCategory: 'Seafood', color: Colors.blue, img: 'assets/images/fish_and_seafood.jpg'),
  CategoriesModel(id: 6, nameCategory: 'Dairy Foods', color: Colors.amber, img: 'assets/images/beans_and_nuts.jpg'),
  CategoriesModel(id: 7, nameCategory: 'Snacks', color: Colors.pinkAccent, img: 'assets/images/vegetable.png'),
  CategoriesModel(id: 8, nameCategory: 'Food Quiz', color: Colors.deepOrange, img: 'assets/images/fruits.jpg'),
  CategoriesModel(id: 9, nameCategory: 'Eggs', color: Colors.purple, img: 'assets/images/drink.jpg'),
  CategoriesModel(id: 10, nameCategory: 'Noodles', color: Colors.cyan, img: 'assets/images/vegetable.png'),
  CategoriesModel(id: 11, nameCategory: 'Hotpots', color: Colors.blueGrey, img: 'assets/images/drink.jpg'),
  CategoriesModel(id: 12, nameCategory: 'Drinks', color: Colors.greenAccent, img: 'assets/images/hamburger.jpg'),
  CategoriesModel(id: 13, nameCategory: 'Salads', color: Colors.deepOrangeAccent, img: 'assets/images/beans_and_nuts.jpg'),
  CategoriesModel(id: 14, nameCategory: 'Hamburgers', color: Colors.lightGreenAccent, img: 'assets/images/fruits.jpg'),
  CategoriesModel(id: 15, nameCategory: 'Drupe/Stone', color: Colors.pink, img: 'assets/images/vegetable.png'),

  // CategoriesModel(id: 16, nameCategory: 'Eggs', color: Colors.purple, img: 'assets/images/beans_and_nuts.jpg'),
  // CategoriesModel(id: 17, nameCategory: 'Noodles', color: Colors.cyan, img: 'assets/images/drink.jpg'),
  // CategoriesModel(id: 18, nameCategory: 'Hotpots', color: Colors.blueGrey, img: 'assets/images/vegetable.png'),
  // CategoriesModel(id: 19, nameCategory: 'Drinks', color: Colors.greenAccent, img: 'assets/images/snack.jpg'),
  // CategoriesModel(id: 20, nameCategory: 'Salads', color: Colors.deepOrangeAccent, img: 'assets/images/hamburger.jpg'),
  // CategoriesModel(id: 21, nameCategory: 'Hamburgers', color: Colors.lightGreenAccent, img: 'assets/images/fish_and_seafood.jpg'),
  // CategoriesModel(id: 22, nameCategory: 'Drupe/Stone', color: Colors.pink, img: 'assets/images/drink.jpg'),
  //
  // CategoriesModel(id: 23, nameCategory: 'Eggs', color: Colors.purple, img: 'assets/images/fish_and_seafood.jpg'),
  // CategoriesModel(id: 24, nameCategory: 'Noodles', color: Colors.cyan, img: 'assets/images/vegetable.png'),
  // CategoriesModel(id: 25, nameCategory: 'Hotpots', color: Colors.blueGrey, img: 'assets/images/snack.jpg'),
  // CategoriesModel(id: 26, nameCategory: 'Drinks', color: Colors.greenAccent, img: 'assets/images/vegetable.png'),
  // CategoriesModel(id: 27, nameCategory: 'Salads', color: Colors.deepOrangeAccent, img: 'assets/images/hamburger.jpg'),
  // CategoriesModel(id: 28, nameCategory: 'Hamburgers', color: Colors.lightGreenAccent, img: 'assets/images/drink.jpg'),
  // CategoriesModel(id: 29, nameCategory: 'Drupe/Stone', color: Colors.pink, img: 'assets/images/beans_and_nuts.jpg')
];

String urlImg = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcHcOgd-pTQugHulLfrrh_cwWo9gaU1s0XB6_HpqeSeel-XPeI9fxzBDFCMFKokYUm-Q4&usqp=CAU';
List<String> ingredientList = ['ingredient 1','ingredient 2','ingredient 3','ingredient 4','ingredient 5','ingredient 6','ingredient 7','ingredient 8', 'ingredient 9', 'ingredient 10'];
String formula = 'Step 1 : todo 1, Step 2 : todo 2, Step 3 : todo 3, Step 4 : todo 4, Step 5 : todo 5 ';
String desc = 'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion. ';

List<FoodsModel> FAKE_LIST_FOOD = [
  FoodsModel(idFood: 1, idCategory: 1, nameFood: 'Squid', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 2, idCategory: 1, nameFood: 'Octopus', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 30), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 3, idCategory: 1, nameFood: 'Cuttlefish', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 4, idCategory: 1, nameFood: 'Clams', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(minutes: 15), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 5, idCategory: 1, nameFood: 'Shrimps', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 6, idCategory: 1, nameFood: 'Prawn', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 7, idCategory: 1, nameFood: 'Salmon', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 2, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 8, idCategory: 1, nameFood: 'Plaice', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 2, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 9, idCategory: 1, nameFood: 'Crab', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(minutes: 5), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 10, idCategory:1, nameFood: 'Lobster', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 50), complexity: Complexity.Medium, formula: formula, describe: desc),

  FoodsModel(idFood: 11, idCategory: 2, nameFood: 'Squid', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 12, idCategory: 2, nameFood: 'Octopus', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(minutes: 30), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 13, idCategory: 2, nameFood: 'Cuttlefish', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 2, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 14, idCategory: 2, nameFood: 'Clams', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 2, minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 15, idCategory: 2, nameFood: 'Shrimps', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 16, idCategory: 2, nameFood: 'Prawn', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 17, idCategory: 2, nameFood: 'Salmon', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 18, idCategory: 2, nameFood: 'Plaice', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 19, idCategory: 2, nameFood: 'Crab', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 20, idCategory: 2, nameFood:  'Lobster', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),

  FoodsModel(idFood: 21, idCategory: 3, nameFood: 'Squid', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 22, idCategory: 3, nameFood: 'Octopus', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 23, idCategory: 3, nameFood: 'Cuttlefish', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 24, idCategory: 3, nameFood: 'Clams', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 25, idCategory: 3, nameFood: 'Shrimps', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 26, idCategory: 3, nameFood: 'Prawn', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 27, idCategory: 3, nameFood: 'Salmon', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 28, idCategory: 3, nameFood: 'Plaice', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 29, idCategory: 3, nameFood: 'Crab', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 30, idCategory: 3, nameFood:  'Lobster', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),

  FoodsModel(idFood: 31, idCategory: 4, nameFood: 'Squid', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 32, idCategory: 4, nameFood: 'Octopus', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 33, idCategory: 4, nameFood: 'Cuttlefish', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 34, idCategory: 4, nameFood: 'Clams', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),

  FoodsModel(idFood: 35, idCategory: 5, nameFood: 'Shrimps', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 36, idCategory: 5, nameFood: 'Prawn', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 37, idCategory: 5, nameFood: 'Salmon', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 38, idCategory: 5, nameFood: 'Plaice', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 39, idCategory: 5, nameFood: 'Crab', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 40, idCategory: 5, nameFood:  'Lobster', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 51, idCategory: 5, nameFood: 'Squid', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),

  FoodsModel(idFood: 52, idCategory: 6, nameFood: 'Octopus', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 53, idCategory: 6, nameFood: 'Cuttlefish', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 54, idCategory: 6, nameFood: 'Clams', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 55, idCategory: 6, nameFood: 'Shrimps', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 56, idCategory: 6, nameFood: 'Prawn', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 57, idCategory: 6, nameFood: 'Salmon', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 58, idCategory: 6, nameFood: 'Plaice', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 59, idCategory: 6, nameFood: 'Crab', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration( minutes: 10), complexity: Complexity.Medium, formula: formula, describe: desc),
  FoodsModel(idFood: 60, idCategory: 6, nameFood:  'Lobster', imgFood: urlImg, ingredientList: ingredientList, durationTodo: const Duration(hours: 1, minutes: 20), complexity: Complexity.Medium, formula: formula, describe: desc),

];

List<FavouritesFoodModel> FAKE_FAVOURITE_FOODS = [
  FavouritesFoodModel(id: 1, idCategory: 1, idFood: 1),
  FavouritesFoodModel(id: 2, idCategory: 1, idFood: 2),
  FavouritesFoodModel(id: 3, idCategory: 2, idFood: 3)
];