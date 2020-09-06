import 'package:flutter/material.dart';

class CardLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 220.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // margin: EdgeInsets.only(top: 250.0, left: 30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0)),
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 25.0,
                  offset: Offset(0.0, 17.0))
            ]),
      ),
    );
  }
}
