import 'package:demo_app/FoodApp/Data/FakeDataCategories.dart';
import 'package:demo_app/FoodApp/Home/DetailFood.dart';
import 'package:demo_app/FoodApp/Models/FavouritesFoodModel.dart';
import 'package:demo_app/FoodApp/Models/FoodsModel.dart';
import 'package:flutter/material.dart';

class ItemFoods extends StatelessWidget {
  late FoodsModel foodsModel;

  ItemFoods({required this.foodsModel});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(body: DetailFood(foodsModel: foodsModel,)),));
      },
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.only(top: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 12,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // img
              SizedBox(
                height: 80,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: 'assets/loading_styles/loading_holder.gif',
                      image: foodsModel.imgFood),
                ),
              ),
              // title + formula foods
              Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title
                      Container(
                        margin: const EdgeInsets.only(left: 10, bottom: 4),
                        child: Text(
                          foodsModel.nameFood,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // formula
                      Container(
                        margin:
                            const EdgeInsets.only(left: 15, bottom: 4, right: 10),
                        child: Text(
                          '- ${foodsModel.formula}',
                          maxLines: 2,
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      // duration
                      Container(
                        width: 100,
                        alignment: AlignmentDirectional.center,
                        margin: const EdgeInsets.only(left: 13),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.black45.withOpacity(0.3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6.0)),
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Center(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.timer_outlined,
                                color: Colors.white,
                                size: 16,
                              ),
                              Text(
                                ' ${foodsModel.durationTodo.inMinutes} minutes',
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              //
              Expanded(
                  flex: 1,
                  child: AddFoodToListFavourite(
                    foodModel: foodsModel,
                  ))
            ],
          ),
        ),
      ),

    );
  }
}

class AddFoodToListFavourite extends StatefulWidget {
  FoodsModel foodModel;

  AddFoodToListFavourite({super.key, required this.foodModel});

  @override
  State<AddFoodToListFavourite> createState() => _AddFoodToListFavouriteState();
}

class _AddFoodToListFavouriteState extends State<AddFoodToListFavourite> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            bool isAdded = isFoodFavourite(widget.foodModel);
            if (isAdded) {
              removeFoodOutListFavourite(widget.foodModel);
              // print('need remove');
            } else {
              addFoodToListFavourite(widget.foodModel);
              // print('need add');
            }
          });
        },
        icon: Icon(
          isFoodFavourite(widget.foodModel)
              ? Icons.favorite
              : Icons.favorite_border_outlined,
          color: Colors.red,
        ));
  }


  bool isFoodFavourite(FoodsModel foodsModel) {
    for (FavouritesFoodModel id in FAKE_FAVOURITE_FOODS) {
      if (foodsModel.idFood == id.idFood) {
        return true;
      }
    }
    return false;
  }

  void addFoodToListFavourite(FoodsModel foodsModel) {
    int id = FAKE_FAVOURITE_FOODS.length;
    FavouritesFoodModel favouritesFoodModel = FavouritesFoodModel(
        id: id + 1,
        idCategory: foodsModel.idCategory,
        idFood: foodsModel.idFood);
    FAKE_FAVOURITE_FOODS.add(favouritesFoodModel);
  }

  void removeFoodOutListFavourite(FoodsModel foodsModel) {
    for (FavouritesFoodModel modelRemove in FAKE_FAVOURITE_FOODS) {
      if (foodsModel.idFood == modelRemove.idFood) {
        FAKE_FAVOURITE_FOODS.remove(modelRemove);
        return;
      }
    }
    return;
  }


}
