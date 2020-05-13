import 'package:flutter/material.dart';


class SmallBotton extends StatelessWidget {

  final String btnText;

  SmallBotton({this.btnText});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height:30.0,
      width: 100.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.orange,
        ),
        borderRadius: BorderRadius.circular(60.0),
      ),
      child: Center(
        child: Text(btnText, style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
      ),
    );
  }
}