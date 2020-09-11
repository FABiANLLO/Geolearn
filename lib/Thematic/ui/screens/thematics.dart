import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/description_thematic.dart';
import 'package:geolearn/Thematic/ui/widgets/review_list.dart';
import 'package:geolearn/Thematic/ui/widgets/header_thematic.dart';

class Thematics extends StatelessWidget {
  const Thematics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String description =
        "Es el subcontinente austral de América, o también considerado por muchos, uno de los continentes que conforman el supercontinente de Las Américas. Está atravesada por la línea ecuatorial en su extremo norte, quedando así con la mayor parte de su territorio comprendida dentro del hemisferio sur.";
    String namethematic = "Sudamerica";

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            // DescriptionThematic(namethematic, 5, description),
            ReviewList()
          ],
        ),
        HeaderThematic()
      ],
    );
  }
}
