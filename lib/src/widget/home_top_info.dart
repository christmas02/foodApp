import 'package:flutter/material.dart';

class HomeTopInfo extends StatefulWidget {
  @override
  _HomeTopInfoState createState() => _HomeTopInfoState();
}

class _HomeTopInfoState extends State<HomeTopInfo> {
  final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Que veux tu", style:textStyle ),
              Text("manger aujoud'hui ?", style:textStyle ),
            ],
            ),
            Icon(Icons.notifications_none, size: 30.0, color: Theme.of(context).primaryColor,),
          ],
        ),
    );
  }
}


