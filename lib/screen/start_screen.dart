import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //pre-defined rout for this screen so that we don't have to re-type it every time
  static const routeName = '/startScreen';
  @override
  Widget build(BuildContext context) {
    //Scaffolds are the structure of flutter apps: think grids for css/bootstrap
    return Scaffold(
      //bar at the top of the screen
      appBar: AppBar(
        //Title of the screen. Appears on the appbar
        title: Text('Start Menu'),
        //actions that can be taken in the appbar
        actions: [
          //a bell icon. Prints 'Alarm'
          IconButton(icon: Icon(Icons.alarm), onPressed: (){
            print("Alarm");
            }),
          //message icon. Prints 'Message'
          IconButton(icon: Icon(Icons.message_sharp), onPressed: (){
            print("message");
          }),
        ],
      ), 
      //body of the screen. Column layout type stacks widgets on top of each other
      //should be useful for formats like 'cards'-style info blocks
      body: Column(
        //set of stacked widgets
        children: [
          //Button that says 'Menu 1' and prints 'Menu 1' upon being pressed
          RaisedButton(
            //event that happens upon pressing the button
            onPressed: (){
              print("Menu 1");
            },
            //text on the button
            child: Text("Menu 1"),
          ),
          //Button that says 'Menu 2' and prints 'Menu 2' upon being pressed
          RaisedButton(
            //event that happens upon pressing the button
            onPressed: (){
              print("Menu 2");
            },
            //text on the button
            child: Text("Menu 2"),
          ),
          //text - kinda self-explainatory
          Text("Third Menu"),
        ],
      ), 
      //swing-out menu with hamburger menu icon
      drawer: Drawer(
        //variation of column with specific children
        child: ListView(
          //set of items in ListView
          children: [
            //Title of drawer
            DrawerHeader(
              child: Text("Drawer Header"),
            ),
            //Item made for listview
            ListTile(
              //first thing in listtile
              leading: Icon(Icons.message),
              //title of listtile
              title: Text("Message"),
            ),
            ListTile(
              //first thing in listtile
              leading: Icon(Icons.account_circle),
              //title of listtile
              title: Text("Profile"),
            ),
            ListTile(
              //first thing in listtile
              leading: Icon(Icons.settings),
              //title of listtile
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      //floating button that does something
      //from seeing this button in apps before, it will stay above the keyboard
      //and in front of widgets as they are scrolled past
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Floating action button");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
