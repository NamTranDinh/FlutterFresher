import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home/HomeCategories.dart';
import 'Home/HomeFavouritesFood.dart';

class mainAppCategories extends StatefulWidget {
  const mainAppCategories({super.key});

  @override
  State<mainAppCategories> createState() => _mainAppCategoriesState();
}

class _mainAppCategoriesState extends State<mainAppCategories> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: typeAppBar[currentIndex],
      body: typeBody[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: (currentIndex == 0) ? Colors.green : Colors.red,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
              label: 'Favourites',
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              backgroundColor: Colors.red),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }

  var typeAppBar = [
    AppBar(
      title: const Text('Categories \'s  Food',
          style: TextStyle(
              fontFamily: 'Pacifico_Regular',
              fontSize: 20,
              color: Colors.white)),
      centerTitle: true,
      backgroundColor: Colors.green,
    ),
    AppBar(
      title: const Text('Your Favourite \'s  Food',
          style: TextStyle(
              fontFamily: 'Pacifico_Regular',
              fontSize: 20,
              color: Colors.white)),
      centerTitle: true,
      backgroundColor: Colors.red,
    )
  ];

  var typeBody = [
    Container(
      padding: const EdgeInsets.all(2),
      child: HomeCategories(),
    ),
    Container(
      padding: const EdgeInsets.all(2),
      child: HomeFavouritesFood(),
    ),
  ];
}
