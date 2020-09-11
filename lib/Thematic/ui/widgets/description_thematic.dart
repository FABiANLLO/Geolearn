import 'package:flutter/material.dart';

class DescriptionThematic extends StatelessWidget {
  String namethematic;
  int stars;
  String descriptionthemathics;

  DescriptionThematic(
      this.namethematic, this.stars, this.descriptionthemathics);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(top: 310.0, right: 3.0),
      child: Icon(Icons.star_half, color: Colors.yellow),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 310.0, right: 3.0),
      child: Icon(Icons.star_border, color: Colors.yellow),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 310.0, right: 3.0),
      child: Icon(Icons.star, color: Colors.yellow),
    );

    final description = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descriptionthemathics,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF56575a)),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 310.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namethematic,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 30.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, star_border],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description],
    );
  }
}
