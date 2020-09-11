import 'package:flutter/material.dart';
import 'package:geolearn/Country/model/country.dart';
import 'package:geolearn/Thematic/ui/widgets/card_image.dart';
import 'package:geolearn/constant.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countrie = ModalRoute.of(context).settings.arguments as Country;
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage(Constant.imageCarrousel + countrie.img1),
          CardImage(Constant.imageCarrousel + countrie.img2),
          CardImage(Constant.imageCarrousel + countrie.img3),
          CardImage(Constant.imageCarrousel + countrie.img4),
        ],
      ),
    );
  }
}
