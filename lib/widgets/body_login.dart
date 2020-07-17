import 'package:flutter/material.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF32A4D5), Color(0xFF24B17e)],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(0.0, 1.0),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
    );
  }
}
