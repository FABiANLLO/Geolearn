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
    return Positioned(
      top: MediaQuery.of(context).size.width,
      left: MediaQuery.of(context).size.height / 6.5,
      child: Container(
          width: 150,
          height: 150,
          child: FloatingActionButton(
            heroTag: "bn1",
            backgroundColor: Color(0xFF11DA53),
            mini: false,
            tooltip: "Fav",
            onPressed: widget.onPressed,
            child: Icon(
              Icons.play_arrow,
              size: 100.0,
              color: Colors.white,
            ),
          )),
    );
  }
}
