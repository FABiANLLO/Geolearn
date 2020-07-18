import 'package:flutter/material.dart';

class ButtonStart extends StatefulWidget {
  final VoidCallback onPressed;
  ButtonStart(@required this.onPressed);
  @override
  _ButtonStartState createState() => _ButtonStartState();
}

class _ButtonStartState extends State<ButtonStart> {
  void OnTapTapped() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 600.0, left: 150.0),
        width: 100,
        height: 100,
        child: FloatingActionButton(
          heroTag: "bn1",
          backgroundColor: Color(0xFF11DA53),
          mini: false,
          tooltip: "Fav",
          onPressed: widget.onPressed,
          child: Icon(
            Icons.play_arrow,
            size: 40.0,
            color: Colors.white,
          ),
        ));
  }
}
