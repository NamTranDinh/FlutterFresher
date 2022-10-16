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
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: categoriesModel.color.withOpacity(0.3),
        body: CustomScrollView(
          physics:  const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            // app bar
            _appBarHomeFood(context),

            // list food
            _listFoodByCategory(listFoodsByCategory),
          ],
        ),
      ),
    );
  }

  // App bar
  SliverAppBar _appBarHomeFood(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 20,
      centerTitle: true,
      expandedHeight: 250,
      stretch: true,
      flexibleSpace: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(categoriesModel.img, fit: BoxFit.cover),
          ),
          FlexibleSpaceBar(
              title: Text(
                categoriesModel.nameCategory,
                style: const TextStyle(
                  fontFamily: 'Pacifico_Regular',
                  fontSize: 24,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 0.0),
                      blurRadius: 30.0,
                      color: Colors.white12,
                    )
                  ],
                ),
              ),
              centerTitle: true,
              background: _backGroundAppBar()),
        ],
      ),
    );
  }

  // bng appbar
  Image _backGroundAppBar() {
    return Image(image: AssetImage(categoriesModel.img), fit: BoxFit.cover);
  }

  // list item food
  SliverToBoxAdapter _listFoodByCategory(List<FoodsModel> listFoodsByCategory) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        child: Stack(
          children: [
            Center(child: Visibility( visible: (listFoodsByCategory.isEmpty)? true : false,child: const Image(image: AssetImage('assets/images/img_placeholder_nothing.png')),)),

            ListView(
              primary: true,
              shrinkWrap: true,
              children: listFoodsByCategory
                  .map((eachFood) => ItemFoods(foodsModel: eachFood))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  // Data list Food
  List<FoodsModel> getListFoodByCategory() {
    return FAKE_LIST_FOOD
        .where((food) => (food.idCategory == categoriesModel.id))
        .toList();
  }
}
