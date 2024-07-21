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
        ),
      ),
          
      
    );
    
    
  }
}