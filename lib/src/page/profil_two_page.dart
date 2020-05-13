import 'package:flutter/material.dart';
import '../app.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, 
            color: Colors.black,),
            onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new App()) ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column( 
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                image:AssetImage('images/avatar.png'),
              )
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 160.0),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("Alexis DJIDONOU", style: TextStyle(color: Colors.black, fontSize:20.0, fontWeight: FontWeight.bold)),
                      SizedBox(height:5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                          Icon(Icons.location_on, color: Colors.grey, size: 20.0,),
                          SizedBox(width:10.0),
                          Text("cocody palmerais", style: TextStyle(color: Colors.black, fontSize:18.0,)),
                        ]
                      )
                    ]
                  ),
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children:<Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0.1),
                      child: Column(
                        children: <Widget>[
                          Text("0", style: TextStyle(color: Colors.red, fontSize:18.0,)),
                          Text("Favorie", style: TextStyle(color: Colors.black, fontSize:18.0,)),
                        ],
                      ),
                    ),
                    SizedBox(width:40.0),
                    Padding(
                      padding: const EdgeInsets.all(0.1),
                      child: Column(
                        children: <Widget>[
                          Text("0", style: TextStyle(color: Colors.red, fontSize:18.0,)),
                          Text("Commande", style: TextStyle(color: Colors.black, fontSize:18.0,)),
                        ],
                      ),
                    ),
                    SizedBox(width:40.0),
                    Padding(
                      padding: const EdgeInsets.all(0.1),
                      child: Column(
                        children: <Widget>[
                          Text("1", style: TextStyle(color: Colors.red, fontSize:18.0,)),
                          Text("Lieux", style: TextStyle(color: Colors.black, fontSize:18.0,)),
                        ],
                      ),
                    ),
                  ]
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}