import 'package:demo_app/food_app/Data/FakeDataCategories.dart';
import 'package:demo_app/food_app/LayoutItem/ItemCategories.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: GridView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 6,
            mainAxisSpacing: 3),
        children:
          FAKE_DATA_CATEGORIES.map((eachCategory) => ItemCategories(categoriesModel: eachCategory, context: context)).toList(),
      ),
    );
  }
}
