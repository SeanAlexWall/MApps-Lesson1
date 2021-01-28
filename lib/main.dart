import 'package:flutter/material.dart';
import 'package:lesson1/screen/image_screen.dart';
import 'package:lesson1/screen/material_design_screen.dart';
import 'package:lesson1/screen/start_screen.dart';


//void main() is the entry point for the app
void main() {
  //creates a new instance of the class Lesson1App and invokes the build() function
  runApp(Lesson1App());
}

class Lesson1App extends StatelessWidget {
  //called when Lesson1App is created
  @override
  Widget build(BuildContext context) {
    //returns a new instance of a Material-style app
    //defined by the various screens we have set up
    return MaterialApp(
      //setting this to false removes the red 'debug' banner on the top right
      //corner of the screen
      debugShowCheckedModeBanner: false,
      //overall theme, colors, and fonts for the app. changes the way buttons
      //and other widgets look
      theme: ThemeData(
        //sets the app to loght or dark mode
        brightness: Brightness.dark,
        //primary color of the application. by defult blue
        primaryColor: Colors.red[700],
        textTheme: TextTheme(
          //override headline1 style
          headline1: TextStyle(fontSize: 30.0, color: Colors.yellow[900])
        ),
      ),
      //the first screen the app goes to
      initialRoute: StartScreen.routeName,
      //routes to all the screens in the app
      routes: {
        //when the routeName for start_screen is used, it returns the function StartScreen()
        StartScreen.routeName : (context) => StartScreen(),
        MaterialDesignScreen.routeName : (context) => MaterialDesignScreen(),
        ImageScreen.routeName : (context) => ImageScreen(),
      }
    );
  }
}