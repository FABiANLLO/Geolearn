import 'package:flutter/material.dart';

class DescriptionThematic extends StatelessWidget {
  String namethematic;
  int stars;
  String descriptionthemathics;
  String name2;
  String descp2;
  String aspcban;
  String descpban;
  String mapCountry;

  DescriptionThematic(this.namethematic, this.descriptionthemathics, this.name2,
      this.descp2, this.aspcban, this.descpban, this.mapCountry);

  @override
  Widget build(BuildContext context) {
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

    final carac = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namethematic,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 25.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
    final aspc = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            name2,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 25.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );

    final description2 = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descp2,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF56575a)),
      ),
    );
    final aspcban2 = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            aspcban,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 25.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
    final descriptionban = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descpban,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF56575a)),
      ),
    );
    final aspcmap = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            mapCountry,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 25.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        carac,
        description,
        aspc,
        description2,
        aspcban2,
        descriptionban,
        aspcmap
      ],
    );
  }
}
