import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:speedfoodApp/src/model/food_model.dart';
import 'package:speedfoodApp/src/scoped-model/main_model.dart';
import 'package:speedfoodApp/src/widget/button.dart';
//import 'package:speedfoodApp/src/widget/button.dart';

class AddFoodItem extends StatefulWidget {
  @override
  _AddFoodItemState createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {

   String title;
   String category;
   String description;
   String price;
   String discount; 

   GlobalKey<FormState> _foodItemFormeKey = GlobalKey();
   GlobalKey<ScaffoldState> _scaffoldStateKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: Button(btnText: "add food item"),
      key: _scaffoldStateKey,
      body: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 16.0),
          //width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          child: Form(
            key: _foodItemFormeKey,
            child: Column(
              children: <Widget>[
                Container(
                margin: EdgeInsets.only(bottom:20.0),
                width: MediaQuery.of(context).size.width,
                height: 170.0,
                  decoration: BoxDecoration(
                     //color: Colors.red,
                     borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage("images/unnamed.jpg"),
                      )
                  ),
                ),
                _buildTextFormField("Food title"),
                _buildTextFormField("Category"),
                _buildTextFormField("Description", maxLine: 5),
                _buildTextFormField("Price"),
                _buildTextFormField("Discount"),
                SizedBox(height:70.0),
                ScopedModelDescendant(
                  builder: (BuildContext context, Widget child, MainModel model){
                    return  GestureDetector(
                    onTap: (){
                      onSubmit(model.addFood);
                      if(model.isloading){
                        // show laoding
                        showLoadingIndicator();
                      }
                    },
                    child: Button(btnText: "add food item")
                  );
                  
                  },
                ),
              ]
            ),
          )
        ),
      ),
    );
  }

  void onSubmit(Function addFood) async{
    if(_foodItemFormeKey.currentState.validate()){
       _foodItemFormeKey.currentState.save();
  
        final Food food = Food(
          name: title,
          description: description,
          category: category,
          price: double.parse(price),
          discount: double.parse(discount),
        );
        bool value = await addFood(food);
        if(value){
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(
            content: Text("food successfully"),
          );
          _scaffoldStateKey.currentState.showSnackBar(snackBar);
        }else if(!value){
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(
            content: Text("food item error"),
          );
          _scaffoldStateKey.currentState.showSnackBar(snackBar);
        }
    }
  }

  Future<void> showLoadingIndicator(){
    return showDialog(context: context,
    barrierDismissible: false,
    builder: (BuildContext context){
      return AlertDialog(
        content: Row(
          children: <Widget>[
            CircularProgressIndicator(),
            Text("Adding food item ..."),
          ]
        ),
      );
     } 
    );
  }

  Widget _buildTextFormField( String hint, {int maxLine = 1}){
    return TextFormField(
      decoration: InputDecoration(hintText: "$hint"),
      maxLines: maxLine,
      keyboardType: hint == "Price" || hint == "Discount" ? TextInputType.number: TextInputType.text,
      validator: (String value){
        if(value.isEmpty && hint == "Food title"){
          return "the food item require";
        }
        if(value.isEmpty && hint == "Category"){
          return "the category require";
        }
        if(value.isEmpty && hint == "Description"){
          return "the descrption require";
        }
        if(value.isEmpty && hint == "Price"){
          return "the price require";
        }
        if(value.isEmpty && hint == "Discount"){
          return "the discount require";
        }

      },
      onChanged: (String value){
        if(hint == "Food title"){
           title = value;
        }
        if(hint == "Category"){
           category = value;
        }
        if(hint == "Description"){
           description = value;
        }
        if(hint == "Price"){
           price = value;
        }
        if(hint == "Discount"){
           discount = value;
        }
      },
    );
  }
}