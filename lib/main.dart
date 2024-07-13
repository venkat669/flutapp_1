import 'package:flutter/material.dart';
 /*
flutter is made of widgits
each element that we see on screen is a widgit
the view of screen is dependent on the ordering of these widgits
it follows a tree structre

 */ 
void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Guy"),
         backgroundColor: Colors.blue,  // background color for app bar title
      ),
      body: Container(
        child: Center(
          child: Text("Hello User",
           style: TextStyle(backgroundColor: Colors.grey , // gives grey background for the text
           fontStyle: FontStyle.italic, // font is change to itallic
           fontFamily:'San Fransisco', 
            color: Color.fromRGBO(254, 36, 7, 0.962), // gives color for the text
            fontSize: 30),), // size of text
           
        ),
        
      ),
    );
  }
}
