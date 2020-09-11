import 'package:flutter/material.dart';

class AppbarGradient extends StatelessWidget {
  String title = "";
  double height = 0.0;

  AppbarGradient({Key key, this.height, this.title}); //he
  // AppbarGradient(this.title);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht = MediaQuery.of(context).size.width;

    if (height == null) {
      height = screenHeight;
    }

    return Container(
      width: screenWidht,
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF32A4D5), Color(0xFF24B17e)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5, -0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.circular(screenHeight / 2),
          ),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: "Lato",
                shadows: <Shadow>[
                  Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 15.0,
                      color: Colors.grey)
                ],
                fontWeight: FontWeight.bold),
          ),
          alignment: Alignment(-1.15, -0.74),
        ),
      ),
      //alignment: Alignment(-0.9, -0.6),
    );
  }
}
