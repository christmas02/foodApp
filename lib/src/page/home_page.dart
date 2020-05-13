import 'package:flutter/material.dart';
import 'package:speedfoodApp/src/scoped-model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

import '../widget/home_top_info.dart';
import '../widget/food_category.dart';
import '../widget/search_field.dart';
import '../widget/bought_food.dart';

//model
import '../model/food_model.dart';

class HomePage extends StatefulWidget {
  //final FoodModel foodModel;

  //HomePage(this.foodModel);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
    //widget.foodModel.fetchFoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        children:<Widget>[
         HomeTopInfo(),
         FoodCategory(),
         SearchField(),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text(
               "Menus du jour",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
             ),
             GestureDetector(
               onTap: (){},
               child: Text(
                 "Voir +",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor
                    ),
               ),
             ),
         ],),
         SizedBox(height: 20.0),
         ScopedModelDescendant<MainModel>(
            builder: (BuildContext context, Widget child, MainModel model){
              return Column(
                children: model.foods.map(_buildFoodItems).toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget  _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
       child: BoughtFoods(
         id: food.id,
         name: food.name,
         //imagePath: food.imagePath,
         category: food.category,
         price: food.price,
         discount: food.discount,
         ratings: food.ratings,
       ),
    );
  }
}
