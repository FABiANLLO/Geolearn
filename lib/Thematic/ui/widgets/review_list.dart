import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/image.jpg", "People Name", "1 review 5 photos",
            "Excelente app"),
        Review("assets/img/image.jpg", "People Name", "1 review 5 photos",
            "Excelente app"),
        Review("assets/img/image.jpg", "People Name", "1 review 5 photos",
            "Excelente app"),
        Review("assets/img/image.jpg", "People Name", "1 review 5 photos",
            "MALA app"),
        Review("assets/img/image.jpg", "People Name", "1 review 5 photos",
            "MALA app"),
        Review("assets/img/image.jpg", "People Name", "1 review 5 photos",
            "MALA app")
      ],
    );
  }
}
