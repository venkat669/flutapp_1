import 'package:flutapp_1/form.dart';
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
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: Colors.blue,
        shadowColor: Colors.grey.withOpacity(0.5),
        
      ),
      body: Center(
        child: Container(
          
          clipBehavior:Clip.antiAliasWithSaveLayer,
          
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          height: (MediaQuery.of(context).size).width * 1,
          width: (MediaQuery.of(context).size).width * 1,
          decoration: BoxDecoration(color:Color(0xff061db1),
          borderRadius: BorderRadius.circular(10),
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
                child: Text(buttonText), // Display updated text
                ),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[  
                    
                Column(
                  children:[
                    
                    Text("sd/fsg  "),
                Text("dfgh"),
                Text("hello ")]),


                Column(children: [
                  
                  Text("sdfsg"),
                Text("dfgh")])

                ]),
            ],
           
            
           ),
           
        ),
      )
    );
    
  }
}