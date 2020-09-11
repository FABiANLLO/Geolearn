import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/description_thematic.dart';
import 'package:geolearn/Thematic/ui/widgets/header_thematic.dart';
import 'package:geolearn/Thematic/ui/widgets/review_list.dart';

class ThemathicScreen extends StatefulWidget {
  ThemathicScreen({Key key}) : super(key: key);

  @override
  _ThemathicScreenState createState() => _ThemathicScreenState();
}

class _ThemathicScreenState extends State<ThemathicScreen> {
  @override
  Widget build(BuildContext context) {
    String description =
        "Es el subcontinente austral de América, o también considerado por muchos, uno de los continentes que conforman el supercontinente de Las Américas. Está atravesada por la línea ecuatorial en su extremo norte, quedando así con la mayor parte de su territorio comprendida dentro del hemisferio sur.";
    String namethematic = "Sudamerica";
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionThematic(namethematic, 5, description),
              ReviewList()
            ],
          ),
          HeaderThematic(),
          Container(
            padding: EdgeInsets.only(top: 40.0, left: 1.0),
            child: SizedBox(
              height: 45.0,
              width: 45.0,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
