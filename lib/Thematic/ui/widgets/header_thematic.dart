import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/card_image_list.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';

class HeaderThematic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AppbarGradient(height: 150.0, title: 'Tematicas'),
        CardImageList()
      ],
    );
  }
}
