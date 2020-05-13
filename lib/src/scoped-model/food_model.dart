import 'dart:convert';

import 'package:speedfoodApp/src/model/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food>   _foods = [];
  bool _isloading = false;


  bool get isloading{
    return _isloading;
  }

  List<Food> get foods {
    return List.from(_foods); 
  }

  Future<bool> addFood(Food food) async{
    //_foods.add(food);
    _isloading = true;
    notifyListeners();
    try{
      final Map<String, dynamic> foodData = {
      "title" : food.name,
      "description" : food.description,
      "category" : food.category,
      "price" : food.price,
      "discount" : food.discount,
    };
    final http.Response response = await http.post(
      "https://food-3e590.firebaseio.com/foods.json", 
      body: json.encode(foodData));

    final Map<String, dynamic> responeData = json.decode(response.body);

    //print(responeData["name"]);
    Food foodWithID = Food(
      id: responeData["name"],
      name: food.name,
      description: food.description,
      category: food.category,
      price: food.price,
      discount: food.discount,
    );

    _isloading = false;
    notifyListeners();
    fetchFoods();
    return Future.value(true);
    } catch (e) {
      _isloading = false;
      notifyListeners();
      return Future.value(false);
      //print("Coneexion error $e");
    }
  }

  void fetchFoods() {
    http
        .get("https://food-3e590.firebaseio.com/foods.json")
        .then((http.Response response) {
      // print("Fecthing data: ${response.body}");
      final Map<String, dynamic> fetchedData = json.decode(response.body);
      print(fetchedData);

      final List<Food> foodItems = [];

      fetchedData.forEach((String id,dynamic foodData) {
        Food foodItem = Food(
          id: id,
          name: foodData["title"],
          description: foodData["description"],
          category: foodData["category"],
          price: foodData["price"],
          discount: foodData["discount"]
        );

        foodItems.add(foodItem);
      });

      _foods = foodItems;

      notifyListeners();
    });
  }
}
