import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import '../Models/FoodsModel.dart';

class DetailFood extends StatelessWidget {
  late FoodsModel foodsModel;

  DetailFood({required this.foodsModel});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: [
        // Appbar
        _appBarFoodDetail(context),

        // img Food

        // data
        _dataDetailFood(),
      ],
    );
  }

  SliverAppBar _appBarFoodDetail(BuildContext context) {
    return SliverAppBar(
        pinned: true,
        elevation: 20,
        centerTitle: true,
        expandedHeight: 250,
        stretch: true,
        flexibleSpace: Stack(clipBehavior: Clip.none, children: [
          Positioned.fill(
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: 'assets/loading_styles/loading_holder.gif',
                image: foodsModel.imgFood),
          ),
          FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              foodsModel.nameFood,
              style: const TextStyle(
                fontFamily: 'Pacifico_Regular',
                fontSize: 24,
              ),
            ),
            background: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: 'assets/loading_styles/loading_holder.gif',
                image: foodsModel.imgFood),
          ),
        ]));
  }

  SliverToBoxAdapter _dataDetailFood() {
    return SliverToBoxAdapter(
        child: Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      padding: const EdgeInsets.only(bottom: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _fastInfoFood(),

          // ingredients
          Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.soup_kitchen_outlined,
                    color: Colors.green,
                  ),
                  Text(
                    '\t Ingredient',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Pacifico_Regular',
                        color: Colors.green),
                  )
                ],
              )),
          _ingredients(),

          // formula
          Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Text(
                    '\t Formula',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Pacifico_Regular',
                        color: Colors.red),
                  )
                ],
              )),
          _formula(),

          // desc
          Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                children: const [
                  Icon(
                    Icons.description_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    '\t Description',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Pacifico_Regular',
                        color: Colors.blue),
                  )
                ],
              )),
          _desc(),
        ],
      ),
    ));
  }

  Row _fastInfoFood() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // duration
        Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          width: 60,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                    flex: 4,
                    child: Icon(
                      Icons.timer_outlined,
                      color: Colors.white,
                    )),
                Expanded(
                    flex: 3,
                    child: Text(
                      '${foodsModel.durationTodo.inMinutes}\'',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        ),

        // formula
        Container(
          width: 100,
          height: 120,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),

            border: Border.all(
              color: Colors.blue,
              style: BorderStyle.solid,
              width: 3,
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                    flex: 4,
                    child: Icon(
                      Icons.soup_kitchen_outlined,
                      color: Colors.blue,
                      size: 32
                      ,
                    )),
                Expanded(
                    flex: 3,
                    child: Text(
                      foodsModel.complexity.name,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.blue,
                      ),
                    ))
              ],
            ),
          ),
        ),

        // favor
        Container(
          width: 60,
          height: 100,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                    flex: 4,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    )),
                Expanded(
                    flex: 3,
                    child: Text(
                      '${foodsModel.idCategory}',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column _ingredients() {
    return Column(
      children: foodsModel.ingredientList
          .map((eachItem) => Container(
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.noise_control_off,
                      color: Colors.green,
                      size: 16,
                    ),
                    Text(
                      '\t \t \t  $eachItem.',
                      maxLines: 3,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }

  Column _formula() {
    return Column(
      children: foodsModel.formula
          .map((eachItem) => Container(
                padding: const EdgeInsets.all(3),
                margin: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.noise_control_off,
                      color: Colors.red,
                      size: 16,
                    ),
                    Text(
                      '\t \t \t  $eachItem.',
                      maxLines: 3,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }

  ExpandableText _desc() {
    return ExpandableText(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.justify,
      style: const TextStyle(height: 1.5, fontSize: 13.5, letterSpacing: 1),
      '\t \t ${foodsModel.describe}',
      expandText: 'Show more',
      collapseText: 'Show less',
    );
  }
}
