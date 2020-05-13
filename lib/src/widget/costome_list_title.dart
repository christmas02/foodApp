import 'package:flutter/material.dart';

class CostomList extends StatelessWidget {

   final IconData icon;
   final String text;

   CostomList({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:10.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.orange
            ),
            SizedBox(width: 15.0,),
            Text("$text",
                  ),
          ],
        ),
    );
  }
}
