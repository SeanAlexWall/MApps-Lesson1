import 'package:flutter/material.dart';
import 'package:lesson1/screen/button_screen.dart';
import 'package:lesson1/screen/font_screen.dart';

import 'image_screen.dart';
import 'material_design_screen.dart';

class StartScreen extends StatelessWidget {
  //pre-defined rout for this screen so that we don't have to re-type it every time
  static const routeName = '/startScreen';
  @override
  Widget build(BuildContext context) {
    //Scaffolds are the structure of flutter apps: think grids for css/bootstrap
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Menu'),
        actions: [
          IconButton(icon: Icon(Icons.alarm), onPressed: (){
            print("Alarm");
            }),
          IconButton(icon: Icon(Icons.message_sharp), onPressed: (){
            print("message");
          }),
        ],
      ), 
      //body of the screen. Column layout type stacks widgets on top of each other
      //should be useful for formats like 'cards'-style info blocks -> Containters in dart
      body: Column(
        //set of stacked widgets
        children: [
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, MaterialDesignScreen.routeName),
            child: Text("Material Design Demo"),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, ImageScreen.routeName),
            child: Text("Image Demo"),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, ButtonScreen.routeName),
            child: Text("Button Demo"),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, FontScreen.routeName),
            child: Text("Custom Font Demo"),
          ),
        ],
      ), 
      //swing-out menu with hamburger menu icon
      drawer: Drawer(
        //variation of column with specific children
        child: ListView(
          //set of items in ListView
          children: [
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
      bottomNavigationBar: BottomNavigationBar(
        //needs at least two items
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business"),
        ],
        //which item on the navigation bar is active on default(on this screen)
        currentIndex: 0,
        //what happens when an item in the navigation bar is tapped
        onTap: (index){
          print("Current index is $index");
        },
      ) ,
    );
  }
}
