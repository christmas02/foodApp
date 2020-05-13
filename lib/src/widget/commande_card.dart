import 'package:flutter/material.dart';

class CommandeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0 ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height:75.0,
              width:45.0,
              decoration: BoxDecoration(
                border: Border.all(width:2.0, color: Colors.grey),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.keyboard_arrow_up, color: Color(0xFFD3D3D3),)
                  ),
                  Text("0",style: TextStyle(fontSize: 18.0),),
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.keyboard_arrow_down, color: Color(0xFFD3D3D3),),
                  ),
                ]
              ),
            ),
            SizedBox(width: 20.0),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/yassa.jpeg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Yassa de poulet", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                SizedBox(height:9.0),
                Text("2.500 XOP", style: TextStyle(color: Colors.orange, fontSize:16.0,fontWeight: FontWeight.bold),),
                SizedBox(height:5.0),
                Container(
                  height: 25.0,
                  width: 140.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:<Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                         children: <Widget>[
                           Text("Chezn", style: TextStyle(color: Colors.grey),),
                           SizedBox(width:4.0),
                           InkWell(
                             onTap: (){},
                             child: Text("x" ,
                             style: TextStyle(
                               color: Colors.red, 
                               fontWeight: FontWeight.bold
                              ),
                            ),
                           ),
                         ],
                       ),
                      ),
                    ]
                  ),
                ),
                
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.delete_outline, size:30.0, color: Colors.red,),
            ),
          ],
        ),
      ),
    );
  }
}