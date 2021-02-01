import 'package:flutter/material.dart';

class RowColScreen extends StatelessWidget{
  static const routeName = "/rowColScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column Demo"),
      ),
      body: SingleChildScrollView(
        //wrapping the column in a container, then specifying the width
        //makes sure that the elements can be aligned to the center
        child: Container(
          //gets the width of the current device
          width: MediaQuery.of(context).size.width,
          child: Column(
            //alignment on horizontal axis 
            crossAxisAlignment: CrossAxisAlignment.center,
            //alignment on vertical axis - not relavant now with the scrollview
            // mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              //displaying something on top of another
              Stack(
                children: [
                  Container(
                    height: 200.0,
                    width: 500.0,
                    color: Colors.teal[800],
                  ),
                  Positioned(
                    bottom: 10.00,
                    right: 10.00,
                    child: IconButton(icon: Icon(Icons.alarm), onPressed: null),
                  ),
                ]
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 1" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Wrap(
                spacing: 20.0,
                runSpacing: 10.0,
                children: [
                  Container(
                    color: Colors.teal[900],
                    child: Text(
                      "Row 2-0" , 
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Container(
                    color: Colors.teal[900],
                    child: Text(
                      "Row 2-1" , 
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Container(
                    color: Colors.teal[900],
                    child: Text(
                      "Row 2-2" , 
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Container(
                    color: Colors.teal[900],
                    child: Text(
                      "Row 2-3" , 
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/71yHsyWh4-L._AC_UY218_.jpg'
                    ),
                  ),
                  Expanded(
                    child: Image.asset('images/apple.jpg'),
                  ), 
                ],
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 3" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 4" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 1" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 2" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 3" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 4" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 1" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 2" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 3" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Container(
                color: Colors.teal[900],
                child: Text(
                  "Row 4" , 
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ], //children
          ),
        ),
      ),
    );
  }

}