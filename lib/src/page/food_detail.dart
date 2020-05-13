import 'package:flutter/material.dart';
import '../app.dart';

class FoodDetail extends StatefulWidget {
  final String food_detail_id;
  final String food_detail_name;
  final String food_detail_imagePath;
  final String food_detail_category;
  final double food_detail_price;
  final double food_detail_discount;
  final double food_detail_ratings;

  FoodDetail({
    this.food_detail_id,
    this.food_detail_name,
    this.food_detail_imagePath,
    this.food_detail_category,
    this.food_detail_price,
    this.food_detail_ratings,
    this.food_detail_discount,
  });

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
          children: <Widget>[
            Container(
              height: 350.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage(widget.food_detail_imagePath),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors:[
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.2),
                    ]
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.arrow_back_ios, 
                          color: Colors.white,),
                          onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new App()) ),
                          ),
                          IconButton(icon: Icon(Icons.favorite, 
                          color: Colors.white,),
                          onPressed: (){},
                          ),
                          IconButton(icon: Icon(Icons.shopping_basket, color: Colors.white,),
                          onPressed: (){},
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.food_detail_name, style: TextStyle(color: Colors.white, fontSize:40.0, fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:<Widget>[
                                Text(""+widget.food_detail_price.toString()+" XOF", style: TextStyle(color: Colors.orange, fontSize:25.0, fontWeight: FontWeight.bold)),
                                Icon(Icons.shopping_basket, color: Colors.orange, size: 20.0,),
                              ]
                            )
                          ]
                        ),
                      )
                    
                    ]
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Restaurent', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                      Text('Chez mami SOHPIE', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color: Colors.orange),),
                  ],),
                  SizedBox(height: 10.0),
                  Divider(height: 5.0, color: Colors.black,),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Livraison', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                      Text('45 min', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color: Colors.orange),),
                  ],),
                  SizedBox(height: 10.0),
                  Divider(height: 5.0, color: Colors.black,),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Gambuse', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                      Text('tous', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color: Colors.orange),),
                  ],),
                ],
              )
            ),
            Container(
              padding: EdgeInsets.only(left:20.0, top:2.0),
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  listeCambuse(image: 'images/bo1.png', title: 'Pot de coca'),
                  listeCambuse(image: 'images/bo2.png', title: 'Pot de coca'),
                  listeCambuse(image: 'images/bo3.png', title: 'Pot de coca'),
                  listeCambuse(image: 'images/bo4.png', title: 'Pot de coca'),
                  listeCambuse(image: 'images/bo5.png', title: 'Pot de coca'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Divider(height: 5.0, color: Colors.black,),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Desert et Goupe', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                      Text('', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color: Colors.orange),),
                  ],),
                ],
              )
            ),
            Container(
              padding: EdgeInsets.only(left:20.0, top:2.0),
              height: 150.0,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  listeDesert(image: 'images/sa1.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/sa2.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/sa3.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/sa4.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/sa5.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/d1.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/d2.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/d3.png', title: 'Pot de coca'),
                  listeDesert(image: 'images/d4.png', title: 'Pot de coca'),
                ],
              ),
            ),
            
            SizedBox(height: 20.0),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(20),
                height: 50.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: Center(
                  child: Text(
                    "Commander",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    }
     Widget listeCambuse({image, title}){
      return AspectRatio(
                  aspectRatio: 2 / 2.5,
                  child: Container(
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )
                    ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors:[
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                        ]
                      )
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: 
                      Text(title, style: TextStyle(color: Colors.white, fontSize: 15.0,fontWeight: FontWeight.bold),
                      ),
                    )
                  ),
                 ),
                );
  }

  Widget listeDesert({image, title}){
      return AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Container(
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )
                    ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors:[
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                        ]
                      )
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(title, style: TextStyle(color: Colors.white, fontSize: 15.0,fontWeight: FontWeight.bold),),
                    )
                  ),
                 ),
                );
  }
}