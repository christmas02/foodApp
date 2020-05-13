import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:speedfoodApp/src/model/food_model.dart';
import 'package:speedfoodApp/src/scoped-model/main_model.dart';
import 'package:speedfoodApp/src/widget/food_item_card.dart';

import '../widget/small_botton.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScopedModelDescendant<MainModel>(
            builder: (BuildContext context, Widget child, MainModel model){
             model.fetchFoods();
             List<Food> foods = model.foods;
             return Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView(
                 children: foods.map((Food food){
                   return FoodItemCard(
                     food.name,
                     food.description,
                     food.discount.toString(),
                   );
                 }).toList(),
               ),
             );
           },
        ),
    );
  }
}