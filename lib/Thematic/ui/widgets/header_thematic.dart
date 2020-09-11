import 'package:flutter/material.dart';
import 'package:geolearn/Country/model/country.dart';
import 'package:geolearn/Thematic/ui/widgets/card_image_list.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';

class HeaderThematic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countrie = ModalRoute.of(context).settings.arguments as Country;
    return Stack(
      children: <Widget>[
        AppbarGradient(height: 280.0, title: countrie.name),
        CardImageList()
      ],
    );
  }
}
