import 'package:flutter/material.dart';
import 'package:speedfoodApp/src/scoped-model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:speedfoodApp/src/admin/page/add_food_item.dart';
import 'screen/main_screen.dart';

class App extends StatelessWidget {
  //final FoodModel foodModel = FoodModel();
  final MainModel mainModel = MainModel();

  @override 
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "SpeedFood App",
        theme: ThemeData(primaryColor: Colors.orange),
        home: MainScreen(model: mainModel),
        //home: AddFoodItem(),
      ),
    );
  }
}

