import 'package:flutter/material.dart';
import 'package:geolearn/Thematic/ui/widgets/explore.dart';
import 'package:geolearn/User/ui/widgets/background_content.dart';
import 'package:geolearn/widgets/appbar_gradient.dart';

class PlayScreen extends StatefulWidget {
  PlayScreen({Key key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppbarGradient(height: 300.0, title: 'Juega'),
          BackgroundContent(130.0),
          ListView(
            children: [
              Explore('Países', 'Paises de America', "assets/img/2.jpg"),
            ],
          ),
        ],
      ),
    );
  }
}
