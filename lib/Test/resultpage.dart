import 'package:flutter/material.dart';
import 'package:geolearn/Test/home.dart';
import 'package:geolearn/User/ui/screens/play_screen.dart';
import 'package:geolearn/main.dart';

class resultpage extends StatefulWidget {
  int marks;
  resultpage({Key key, @required this.marks}) : super(key: key);
  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {
  List<String> images = [
    "images/medal.png",
    "images/book.png",
    "images/sad.png",
  ];

  String message;
  String image;

  @override
  void initState() {
    if (marks < 20) {
      image = images[2];
      message = "Deberías esforzarte...\n" + "Tu Puntuación: $marks";
    } else if (marks < 35) {
      image = images[1];
      message = "Puedes hacerlo mejor..\n" + "Tu Puntuación: $marks";
    } else {
      image = images[0];
      message = "Lo hiciste muy bien..\n" + "Tu Puntuación: $marks";
    }
    super.initState();
  }

  int marks;
  _resultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 180.0,
          ),
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Lato",
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
                  },
                  child: Text(
                    "Ir al Inicio",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.teal),
                  // splashColor: Colors.teal,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
