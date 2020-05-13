import 'package:flutter/material.dart';
import 'package:speedfoodApp/src/widget/small_botton.dart';

import '../widget/small_botton.dart';

class FoodItemCard extends StatelessWidget {

  final String title;
  final String description;
  final String discount;

  FoodItemCard(
    this.title,
    this.description,
    this.discount
  );

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(0, 0.5),
                    color: Colors.black38,
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 150.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/lunch.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Text("$title", style: TextStyle(
                            fontSize:20.0,
                            fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height:5.0),
                      Container(
                        width: 190.0,
                         child: Text("$description"),
                      ),
                      SizedBox(height:15.0),
                      Container(
                        width: 190.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("$discount XOF", style: TextStyle(
                               fontSize:16.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.orange,
                            ),),
                            SmallBotton(btnText:"Acheter"),
                          ],
                        ),
                      ),
                    ]
                  )
                ]
              ),
            );
  }
}