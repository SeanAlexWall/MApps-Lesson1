import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget{
  static const routeName = "/buttonScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Demo"),
      ),
      floatingActionButton: FloatingActionButton( 
        onPressed: () => print("Floating action button"),
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () => print("Raised Button"),
            child: Text(
              "Raised Button 1", 
              style: Theme.of(context).textTheme.headline5,
            ),
            padding: EdgeInsets.fromLTRB(20, 10, 0, 30),
            elevation: 30.0
          ),
          RaisedButton.icon(
            onPressed: () => print("Raised Button icon"),
            icon: Icon(Icons.alarm_add),
            label: Text(
              "Raised Button Icon", 
              style: Theme.of(context).textTheme.headline5,
            ),
            elevation: 20.0
          ),
          FlatButton(
            onPressed: () => print("Flat Button"),
            child: Text(
              "Flat Button",
              style: Theme.of(context).textTheme.headline5,
            ),
            color: Colors.teal[900],
            splashColor: Colors.teal[50],
          ),
          IconButton(
            onPressed: () => print("icon button"),
            icon: Icon(
              Icons.analytics, 
              size: 50,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }

}