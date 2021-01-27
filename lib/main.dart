import 'package:flutter/material.dart';
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
      //the first screen the app goes to
      initialRoute: StartScreen.routeName,
      //routes to all the screens in the app
      routes: {
        //when the routeName for start_screen is used, it returns the function StartScreen()
        StartScreen.routeName : goToStart
      }
    );
  }
}

//returns a new instance of the StartScreen class
Widget goToStart(BuildContext context){
  return StartScreen();
}