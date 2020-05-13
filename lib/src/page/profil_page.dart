import 'package:flutter/material.dart';
import '../widget/costome_list_title.dart';
import '../widget/small_botton.dart';
import '../app.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool turnOnNotification = false;
  bool turnOnLocalisation = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Profile", style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold, 
              ),),
              SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height:120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          offset: Offset(0, 4.0),
                          color: Colors.black38
                        )
                      ],
                       image: DecorationImage(
                         image:AssetImage('images/avatar.png'),
                         fit: BoxFit.cover,
                      )
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Alexis DJIDONOU", style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold, 
                      ),),
                      SizedBox(height: 5.0),
                      Text("+225 48 99 79 45",style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Colors.grey,
                      ),),
                      SizedBox(height: 10.0),
                      SmallBotton(btnText:"Editer"),
                    ],)
                ]
              ),
              SizedBox(height: 30.0),
              Text("Compte",style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16.0,
              ),),
              SizedBox(height: 30.0),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: <Widget>[
                     CostomList(
                       icon: Icons.location_on,
                       text: "localisation",
                     ),
                      Divider(height: 5.0, color: Colors.grey),
                     CostomList(
                       icon: Icons.shopping_basket,
                       text: "Panier",
                     ),
                      Divider(height: 5.0, color: Colors.grey),
                    CostomList(
                       icon: Icons.visibility,
                       text: "Modifier le mot de passe",
                     ),
                      Divider(height: 5.0, color: Colors.grey),
                    CostomList(
                       icon: Icons.payment,
                       text: "Moyen de paiement",
                     ),
                    ]
                  ),)
              ),

              SizedBox(height: 30.0),
              Text("Notifications",style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16.0,
              ),),
              SizedBox(height: 30.0),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text("App nototification", style: TextStyle(
                           fontSize: 16.0,
                         ),),
                         Switch(
                           value: turnOnNotification, 
                           onChanged: (bool value){
                             //print("the value: $value");
                             setState(() {
                               turnOnNotification = value;
                             });
                           }
                         )
                       ]
                     ),
                     Divider(height: 5.0, color: Colors.grey),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text("Active la localisation", style: TextStyle(
                           fontSize: 16.0,
                         ),),
                         Switch(
                           value: turnOnLocalisation, 
                           onChanged: (bool value){
                             //print("the value: $value");
                             setState(() {
                               turnOnLocalisation = value;
                             });
                           }
                         )
                       ]
                     )
                    ]
                  ),
                )
              ),

              SizedBox(height: 30.0),
              Text("Others",style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 16.0,
              ),),
              SizedBox(height: 30.0),
              Card(
                elevation: 5.0,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Langue", style: TextStyle(
                           fontSize: 16.0,
                         ),),
                         Divider(height: 30.0, color: Colors.grey),
                         Text("Langue", style: TextStyle(
                           fontSize: 16.0,
                         ),),
                      ]
                    )
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}