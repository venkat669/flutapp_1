import 'dart:ui';

import 'package:flutapp_1/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
} 
class MyHome extends StatefulWidget {

  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<MyHome> {
  String buttonText = "button init";
  int i=0;
  String IconButtontxt = "";
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: Colors.blue,
        shadowColor: Colors.grey.withOpacity(0.5),
        
      ),
      body: Center(
         child:  Column(
          children:<Widget>[ 
            Text("column first element"),

         Container( // containers are similar to div in html
          clipBehavior:Clip.antiAliasWithSaveLayer,
          
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          height: (MediaQuery.of(context).size).width * 1,
          width: (MediaQuery.of(context).size).width * 1,
          decoration: BoxDecoration(color:Color(0xff061db1),
          borderRadius: BorderRadius.circular(20),  // provides the rounded corner for the box
        boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.6),
        spreadRadius: 10,
        blurRadius: 7,
        offset: Offset(0, 3),
         // changes position of shadow
      ),
    ],          
          ),
           child: Column(
            children: <Widget>[
              // Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [ 
                    //  Padding(padding: EdgeInsets.all(10)),
                    Text("hello wrld")]),
                 const Text("hello wrld"),
              // Container(child: FloatingActionButton(onPressed: () => Text("button pressed"),child: Text("press button"),))
                FloatingActionButton(
                onPressed: () {
                  setState(() {
                    i++;
                    if(i%2==0)
                    buttonText = "Button pressed";
                    else{
                      buttonText="Button init";
                    }
                  });
                },
                child: Text(buttonText), hoverColor: Color.fromARGB(255, 208, 55, 137),elevation: 50,// Display updated text
                ),
                Text(buttonText),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[  
                    
                Column(
                  children:[
                                                                              
                    Text("sd/fsg  "),
                Text("dfgh"),
                Text("hello ")
                ]),

                Column(children: [
                  
                  Text("sdfsg"),
                Text("dfgh")
                ])

                ]),
                 // int the above code the two columns are enclosed within a single row
            /// column is used to arrange the number of elements in vertical order (top to bottom)
            ///   row is used to arrange the number of elements in horizontal order  (left to right)
            /// so in above example 2 seperate columns aranged in left to right ; each having element arranged top to bottom 
            /// 
                 IconButton(onPressed:(){
                  setState((){
                     if(i%2==0){
                      IconButtontxt = "clicked";
                      i++;
                     }
                     else{
                      IconButtontxt = "again";
                      i++;
                     }
                  });
                 } , icon: Icon(Icons.account_balance_wallet_outlined),),
                 Text(IconButtontxt+"sdf",style: TextStyle(color: Color.fromARGB(255, 245, 239, 239)),)
            ],
           
            
           ),
           
            
           
        ),
        // column second element
        Text("column second element"),
        Container(   // containers are similar to div
          padding: EdgeInsets.all(10),margin: EdgeInsetsDirectional.all(10) ,
         // decoration: BoxDecoration(gradient: LinearGradient(colors:[ Colors.red, Colors.blue]),borderRadius: BorderRadius.))),  // liner gradient is used for coloring of container (red to blue )
decoration: BoxDecoration(
    gradient: LinearGradient(
    colors:[ Colors.red, Colors.blue]
    ),
    borderRadius: BorderRadius.horizontal(  // horizontal is used instead of circular 
      left: Radius.circular(10),
      right: Radius.circular(52),
    ),
  ),
          child: Text("the secound container wich is placed within the parent column"),
        ),
         Column(
           children: [
             Container(
              child: FloatingActionButton(
                onPressed: (){
                  setState(() {
                    IconButtontxt="floatactbut";
                  });
             
             }, foregroundColor: Colors.greenAccent,
             backgroundColor: Colors.amberAccent,
             shape: CircleBorder(),
             child: Icon(Icons.edit,),),
             ),

             Container(
              child: Text("The above button changes the text to ''floatactbut''  below wallet image ",
              textAlign: TextAlign.center,
              style:TextStyle(
                fontStyle:FontStyle.italic,
                fontWeight: FontWeight.w300,
                fontSize: 50)
                ),
                )
           ],
         )
        
        ])
       
      )
    );
    
  }
}