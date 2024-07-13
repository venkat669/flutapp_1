import 'package:flutter/material.dart';

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
         backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text("Hello User",
           style: TextStyle(backgroundColor: Colors.grey , 
           fontStyle: FontStyle.italic, 
           fontFamily:'Roboto',
            color: Color.fromRGBO(254, 36, 7, 0.962),
            fontSize: 30),),
           
        ),
        
      ),
    );
  }
}
