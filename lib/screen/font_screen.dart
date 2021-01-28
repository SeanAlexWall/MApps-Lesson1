import 'package:flutter/material.dart';

class FontScreen extends StatelessWidget{
  static const routeName = "/fontScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font Demo"),
      ),
      body: Column(
        children: [
          Text( "Font Demo for mobile apps class"),
          Text(
            "Font Demo for mobile apps class", 
            style: TextStyle(
              fontSize: 30.0, 
              fontFamily: "Hachi_Maru_Pop",
            ),
          ),
        ],
      ),
    );
  }

}