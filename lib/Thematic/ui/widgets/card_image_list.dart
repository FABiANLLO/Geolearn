import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/4.jpg"),
          CardImage("assets/img/5.jpg"),
          CardImage("assets/img/6.jpg"),
          CardImage("assets/img/7.jpg"),
        ],
      ),
    );
  }
}
