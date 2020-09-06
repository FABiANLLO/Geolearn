import 'package:flutter/material.dart';

class BackgroundContent extends StatelessWidget {
  double top;

  BackgroundContent(@required this.top);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
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
                  blurRadius: 35.0,
                  offset: Offset(0.0, 17.0))
            ]),
      ),
    );
  }
}
