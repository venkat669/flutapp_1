import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _Statename createState() => _Statename();
}

class _Statename extends State<Homepage> {
  int i = 0;
  int j=0;
  void _incrementCounter() {
    setState(() {
      i++;
    });
    
  }
    void _resetcount(){
      _previousState();
        setState(() {
          i=0;
        });
        
      }
      void _previousState(){
        setState(() {
          j=i;
        });
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text("Hello Guy"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: AlignmentDirectional.topCenter,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        margin: EdgeInsets.all(25),
        // the margin => 25 causes the bluegrey area (scaffold background color)
        decoration: BoxDecoration(color: Color.fromARGB(255, 10, 59, 234)),
        // foregroundDecoration: BoxDecoration(color: Colors.black),  fills the entire fore ground black
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // space around: This property distributes the free space evenly between the children and half of that space before and after the first and last child.
            // spaceevenly : The spaceEvenly property divides the free space between the children evenly.
            // spacebetween : This property ensures that the children of the Column are evenly spaced apart, with equal space between each child.
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Hello User",
                style: TextStyle(
                  backgroundColor: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Roboto',
                  color: Color.fromRGBO(254, 36, 7, 0.962),
                  fontSize: 30,
                ),
              ),
              Image.network(
                'https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                height: 400,
                alignment: Alignment.center,
                // image starts first at centre then gets repeated
                repeat: ImageRepeat.repeat,
                //  used to repeat image
              ),
              Text(
                "Hello User",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
=======
        title: const Text('Title'),
        backgroundColor: Colors.blue,
      ),

     
      
      //)
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children:<Widget>[
            Text("press button to increment counter"),
            ElevatedButton(onPressed: _incrementCounter, 
            child: Text("the button is pressed $i times")),
            TextButton.icon(onPressed: _resetcount, icon: Icon(Icons.recycling),
            label: Text("Reset button"),),//A textbutton to display text along with icon
            OutlinedButton.icon(onPressed: _previousState,
            icon: Icon(Icons.fork_left_rounded), label: Text("previous state $j")),
        ],
>>>>>>> ef6ac4962ba3edba2d1e7a55844428d00ab5ee71
        ),
      ),
          
      
    );
    
    
  }
}