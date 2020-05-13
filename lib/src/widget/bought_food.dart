import 'package:flutter/material.dart';

import 'package:speedfoodApp/src/page/food_detail.dart';

class BoughtFoods extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  BoughtFoods({
    this.id,
    this.name,
    this.imagePath,
    this.category,
    this.price,
    this.discount,
    this.ratings
  });
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: InkWell(
          onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
            // here are passing the values of the procduct to the products detail page
              builder: (context)=> new FoodDetail(
                food_detail_id: widget.id,
                food_detail_name: widget.name,
                food_detail_imagePath: widget.imagePath,
                food_detail_category: widget.category,
                food_detail_price: widget.price,
                food_detail_discount: widget.discount,
                food_detail_ratings: widget.ratings, 
                
              ))),
          child: Stack(
          children: <Widget>[
            Container(
              height: 220.0,
              width: 390.0,
              child: Image.asset(widget.imagePath, fit: BoxFit.cover,),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Container(
                height: 50.0,
                width: 390.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors:[
                       Colors.black, Colors.black12,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )
                ),
              ),
            ),
            Positioned(
                left: 10.0,
                bottom: 10.0,
                right: 10.0,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    Row(children: <Widget>[
                      Icon(Icons.star,color: Theme.of(context).primaryColor,size: 18.0,),
                      Icon(Icons.star,color: Theme.of(context).primaryColor,size: 18.0,),
                      Icon(Icons.star,color: Theme.of(context).primaryColor,size: 18.0,),
                      Icon(Icons.star,color: Theme.of(context).primaryColor,size: 18.0,),
                      Icon(Icons.star,color: Theme.of(context).primaryColor,size: 18.0,),
                      SizedBox(width: 20.0,),
                      Text(
                        "("+ widget.ratings.toString()+"Commande)",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                       Text(
                         ""+widget.price.toString()+" XOF",
                         style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                         "Min order",
                         style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ]
                  )
                ],
              ),
            ),
          ],
      ),
        ),
    );
  }
}