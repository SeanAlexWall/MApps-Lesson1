import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget{
  static const routeName = "/imageScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Demo Screen"),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.network(
              'https://m.media-amazon.com/images/I/61wb3lnoOEL._AC_UY218_.jpg'),
            height: 200.0,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.ac_unit,
            size: 100.0,
            color: Colors.red,
          ),
          Container(
            child: Image.network(
              'https://m.media-amazon.com/images/I/71yHsyWh4-L._AC_UY218_.jpg'),
              height: 200.0,
              color: Colors.teal,
          ),
          Icon(Icons.system_update, size: 200.0, color: Colors.pink,),
          Container(
            child: Image.asset('images/apple.jpg'), 
            height: 100.0, 
            color: Colors.green[100],
          ),
        ],
      ),

    );
  }
  
}