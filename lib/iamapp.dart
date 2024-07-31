import 'dart:ui';

import 'package:flutapp_1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Iamapp(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class Iamapp extends StatelessWidget {
  const Iamapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Guy"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.green),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  alignment: Alignment.center,
                  'assets/images/coal.jpg',
                  height: 150,
                ),
              ],
            ),
          )),
    );
  }
}
