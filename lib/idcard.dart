import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Idcard(),
  ));
}

class Idcard extends StatelessWidget {
  const Idcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: Colors.blue,
        shadowColor: Colors.grey.withOpacity(0.5),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/meimg.jpg'),
                  ),
                  SizedBox(
                    height:
                        19, // creates space between the image and text of size 19
                  ),
                  Text(
                    "Venkatraman Vaithee",
                    style: TextStyle(
                      fontFamily: 'MajorMonoDisplay',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  /*     Easy way for above code
                   Text(
                    "Venkatraman Vaithee",
                    style: GoogleFonts.majorMonoDisplay(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  */
                  SizedBox(
                      height:
                          10), // creates space between the image and text of size 19),
                  Text(
                    "FLUTTER DEVELOPER",
                    style: TextStyle(
                      fontFamily: 'SourceCodeProItalic',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Use standard weight values
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
