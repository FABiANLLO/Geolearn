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
          HeaderThematic()
        ],
      ),
    );
  }
}
