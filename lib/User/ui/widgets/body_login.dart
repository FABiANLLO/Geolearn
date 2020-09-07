import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  double height = 0.0;

  BodyLogin({Key key, this.height}); //he
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
        fit: BoxFit.cover,
        alignment: Alignment(1.8, -0.5),
        child: Container(
          width: screenHeight,
          height: screenHeight * 2,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.circular(screenHeight / 3),
          ),
        ),
      ),

      //alignment: Alignment(-0.9, -0.6),
    );
  }
}
