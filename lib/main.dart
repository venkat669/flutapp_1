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
  const Homepage({Key? key}) : super(key: key);

  @override
  _Statename createState() => _Statename();
}

class _Statename extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                height: 100,
                alignment: Alignment.center,
                // image starts first at centre then gets repeated
                repeat: ImageRepeat.repeat,
                //  used to repeat image
              ),
              Image.asset('assets/images/nature.png', height: 150),
              Text(
                "Hello User",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
