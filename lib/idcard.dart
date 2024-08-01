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
              alignment: Alignment.topCenter,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                    "Venkat Vaith",
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_android,
                          size: 20,
                        ),
                        Text(
                          "1234567891",
                          textAlign:
                              TextAlign.center, // Aligns text horizontally
                        )
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail_lock_rounded,
                            color: Colors.black,
                          ),
                          Text(
                            "Example@mail.com",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    child: ListTile(
                      leading: Icon(Icons.email_rounded),
                      title: Text(
                        "example@mail.com",
                        style: TextStyle(
                            fontFamily: "SourceCodePro",
                            fontWeight: FontWeight.w700),
                      ),
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
