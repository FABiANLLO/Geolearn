import 'package:flutter/material.dart';
import 'package:geolearn/User/ui/widgets/circle_button.dart';

class ButtonsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        child: Row(
          children: <Widget>[
            CircleButton(true, Icons.turned_in_not, 20.0,
                Color.fromRGBO(255, 255, 255, 1)),
            CircleButton(true, Icons.card_travel, 20.0,
                Color.fromRGBO(255, 255, 255, 0.6))
          ],
        ));
  }
}
