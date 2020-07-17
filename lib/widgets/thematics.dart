import 'package:flutter/material.dart';
import 'package:geolearn/widgets/description_thematic.dart';
import 'package:geolearn/widgets/review_list.dart';
import 'package:geolearn/widgets/header_thematic.dart';

class Thematics extends StatelessWidget {
  const Thematics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String description =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ";
    String namethematic = "Lorem Ipsum";

    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionThematic(namethematic, 5, description),
            ReviewList()
          ],
        ),
        HeaderThematic()
      ],
    );
  }
}
